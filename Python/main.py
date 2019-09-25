import dlib
import cv2
import imutils
import db_opr
import recognize
import datetime
from dir import configs
from concurrent.futures import ThreadPoolExecutor
import os
import threading
config_obj = configs()
def main(camera_id, URL, frame_title):
    url=URL
    try:
        if url == "'0'" or url == "'1'" or url == "'2'" or url == "'3'":
            URL = int(url[1:-1])
        stream = cv2.VideoCapture(URL)
    except ValueError as e:
        stream = cv2.VideoCapture(URL)

    # Face detector
    detector = dlib.get_frontal_face_detector()

    # Fancy box drawing function by Dan Masek
    def draw_border(img, pt1, pt2, color, thickness, r, d):
        x1, y1 = pt1
        x2, y2 = pt2

        # Top left drawing
        cv2.line(img, (x1 + r, y1), (x1 + r + d, y1), color, thickness)
        cv2.line(img, (x1, y1 + r), (x1, y1 + r + d), color, thickness)
        cv2.ellipse(img, (x1 + r, y1 + r), (r, r), 180, 0, 90, color, thickness)

        # Top right drawing
        cv2.line(img, (x2 - r, y1), (x2 - r - d, y1), color, thickness)
        cv2.line(img, (x2, y1 + r), (x2, y1 + r + d), color, thickness)
        cv2.ellipse(img, (x2 - r, y1 + r), (r, r), 270, 0, 90, color, thickness)

        # Bottom left drawing
        cv2.line(img, (x1 + r, y2), (x1 + r + d, y2), color, thickness)
        cv2.line(img, (x1, y2 - r), (x1, y2 - r - d), color, thickness)
        cv2.ellipse(img, (x1 + r, y2 - r), (r, r), 90, 0, 90, color, thickness)

        # Bottom right drawing
        cv2.line(img, (x2 - r, y2), (x2 - r - d, y2), color, thickness)
        cv2.line(img, (x2, y2 - r), (x2, y2 - r - d), color, thickness)
        cv2.ellipse(img, (x2 - r, y2 - r), (r, r), 0, 0, 90, color, thickness)

    def face_found(crop,t):
        now = datetime.datetime.now()
        date = now.strftime("%Y-%m-%d")
        time3 = now.strftime("%H%M%S%f")
        time = now.strftime("%H:%M:%S.%f0")
        str_relative_path = str(camera_id) + str(date) + str(time3) + ".png"
        str_frame_relative_path = str(date) + str(time3) + "frame.jpg"
        str_img_save = str(config_obj.str_views_dir)+"//assets//images//dump" + "//" + str(camera_id) + str(
            date) + str(
            time3) + ".png"
        str_img_save_frame = str(config_obj.str_views_dir)+"//assets//images//dump" + "//" + str(date) + str(
            time3) + "frame.png"
        cv2.imwrite(str_img_save, crop)
        str_query_save = "INSERT INTO face_capture2(face_time,face_date,face_img_path,realtive_path,camera_id," \
                         "cap_frame_path,cap_frame_path_show) VALUES" + \
                         "('" + str(\
            time) + "','" + str(date) + "','" + str(str_img_save) + "','" + str_relative_path + "','" + str(
            camera_id) + "','" + str(str_img_save_frame) + "','" + str(str_frame_relative_path) + "')"
        db_opr.execute_insert_1conn(str_query_save)
        threading.Thread(target=face_comp, args=(str_relative_path,str_img_save)).start()

    def face_comp(str_relative_path,str_img_save):
        str_query_top = "SELECT * FROM face_capture2 where realtive_path='" + str_relative_path + "' and " \
                                                                                                  "is_proccessed=0 "
        result_fetch_last_rec = db_opr.fetch_result(str_query_top)
        for row_fetch_last_rec in result_fetch_last_rec:
            comp_result = recognize.compare_dat_in_out(row_fetch_last_rec["id"])
            print(comp_result)
            if comp_result is False:
                os.remove(str_img_save)
                str_delete_query = "DELETE FROM face_capture2 where reative_path='" + str_relative_path + "'"
                db_opr.execute_insert(str_delete_query)
                print("GARBAGE REMOVED")
    alpha = 0.5
    while True:
        # read frames from live web cam stream
        (grabbed, frame) = stream.read()

        # resize the frames to be smaller and switch to gray scale
        frame = imutils.resize(frame, width=400)
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

        # Make copies of the frame for transparency processing
        overlay = frame.copy()
        output = frame.copy()

        # set transparency value


        # detect faces in the gray scale frame
        face_rects = detector(gray, 0)

        # loop over the face detections
        for i, d in enumerate(face_rects):
            x1, y1, x2, y2, w, h = d.left(), d.top(), d.right() + 1, d.bottom() + 1, d.width(), d.height()
            crop = overlay[d.top():d.bottom(), d.left():d.right()]
            face_found(crop,0)
            draw_border(overlay, (x1, y1), (x2, y2), (162, 255, 0), 2, 10, 10)

        # make semi-transparent bounding box
        cv2.addWeighted(overlay, alpha, output, 1 - alpha, 0, output)
        # show the frame
        cv2.imshow(frame_title, output)
        key = cv2.waitKey(1)
        # press q to break out of the loop
        if key == ord("q"):
            break

    # cleanup
    cv2.destroyAllWindows()
    stream.release()


if __name__ == '__main__':
    from multiprocessing import Process
    str_query_camera_master = "SELECT * FROM camera_master"
    result_camera_master = db_opr.fetch_result(str_query_camera_master)
    processes = []
    count = 0
    for row_camera_master in result_camera_master:
        if row_camera_master is not None:
            processes.append(Process(target=main, args=(row_camera_master['id'], row_camera_master['source_URL'],row_camera_master['cam_nam'])).start())
