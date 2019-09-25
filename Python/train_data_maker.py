import face_recognition
import pickle
import db_opr
from dir import configs
from concurrent.futures import ThreadPoolExecutor
config_obj = configs()

train_face_encode_list = {}

def fast_encode(row_fetch_faces):
    person_face_name = str(row_fetch_faces["id"])
    train_face_fetch = str(config_obj.str_views_dir) + str("\\assets\\uploads\\files\\") + str(
        row_fetch_faces["img_file_path"])
    train_image = face_recognition.load_image_file(train_face_fetch)

    train_face_encode = face_recognition.face_encodings(train_image)[0]
    train_face_encode_list[person_face_name] = train_face_encode
    str_query_update = "UPDATE person_details2 set data_set=1 where id='" + person_face_name + "'"
    print(str_query_update)
    db_opr.execute_insert(str_query_update)


def train():
    str_reinit = "UPDATE person_details2 set data_set=0"
    db_opr.execute_insert(str_reinit)
    global train_face_encode_list
    query_fetch_faces = "SELECT * from person_details2 where is_train=1"
    result_fetch_faces = db_opr.fetch_result(query_fetch_faces)
    for row_fetch_faces in result_fetch_faces:
        train_face_fetch = None
        train_image = None
        train_face_encode = None
        print(row_fetch_faces)
        # person_face_name,train_face_encode = fast_encode(row_fetch_faces)
        with ThreadPoolExecutor(max_workers=3) as executor:
            data = executor.submit(fast_encode, row_fetch_faces)

        print("ALL ENCODINGS DONE")
    with open('DATASET/dataset_faces_full.dat', 'wb') as f:
        pickle.dump(train_face_encode_list, f)


def train_stud():
    str_reinit = "UPDATE student set data_set=0"
    db_opr.execute_insert(str_reinit)
    global train_face_encode_list
    query_fetch_faces = "SELECT * from student where is_train=1"
    result_fetch_faces = db_opr.fetch_result(query_fetch_faces)
    print("DB DONE")
    for row_fetch_faces in result_fetch_faces:
        train_face_fetch = None
        train_image = None
        train_face_encode = None
        print(row_fetch_faces)
        person_face_name = str(row_fetch_faces["id"])
        train_face_fetch = str(config_obj.str_views_dir) + str("\\assets\\uploads\\files\\") + str(
            row_fetch_faces["img_file_path"])
        train_image = face_recognition.load_image_file(train_face_fetch)
        train_face_encode = face_recognition.face_encodings(train_image)[0]
        train_face_encode_list[person_face_name] = train_face_encode
        str_query_update = "UPDATE student set data_set=1 where id='" + person_face_name + ""
        db_opr.execute_insert(str_query_update)
    with open('TRAINDATASET/dataset_faces_full_students.dat', 'wb') as f:
        pickle.dump(train_face_encode_list, f)


def train_presence_in_out():
    str_reinit = "UPDATE person_details2 set data_set=0"
    db_opr.execute_insert(str_reinit)
    global train_face_encode_list
    query_fetch_faces = "SELECT * from person_details2 where is_train=1"
    result_fetch_faces = db_opr.fetch_result(query_fetch_faces)
    print("DB DONE")
    for row_fetch_faces in result_fetch_faces:
        train_face_fetch = None
        train_image = None
        train_face_encode = None
        print(row_fetch_faces)
        person_face_name = str(row_fetch_faces["id"])
        train_face_fetch = str(config_obj.str_views_dir) + str("\\assets\\uploads\\files\\") + str(
            row_fetch_faces["img_file_path"])
        train_image = face_recognition.load_image_file(train_face_fetch)
        # train_face_encode = face_encd(train_image)
        train_face_encode = face_recognition.face_encodings(train_image)[0]
        train_face_encode_list[person_face_name] = train_face_encode
        str_query_update = "UPDATE person_details2 set data_set=1 where id='" + person_face_name + "'"
        print(str_query_update)
        db_opr.execute_insert(str_query_update)
    with open('TRAINDATASET/dataset_faces_full.dat', 'wb') as f:
        pickle.dump(train_face_encode_list, f)


train()
