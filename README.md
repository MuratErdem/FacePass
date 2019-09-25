# FacePass
FacePass provides a digital based solution for attendance of students in schools and  colleges using pre-established CCTV networks in classes.   FacePass works on the principles of real-time face detection and recognition over  data collected by CCTV cameras .This concept also has wide applications for various  solutions like intrusion detection, criminal tracking, restricted area authentication,  finding lost children
# Installing Dependencies
  1) Clone The Repo
  2) Run pip install -r requirements.txt 
  3) Create a database named face_pass in mysql and import given .sql file
  4) Extract views in apache server directory (htdocs,www etc)
  5) Do neccessary changes in the following files mentioned
      PHP/face_pass/config/config.php,PHP/face_pass/config/database.php,
      PHP/face_pass/application/views/db_config.php, PHP/face_pass/application/views/header.php,
      PHP/face_pass/application/views/header_crud.php, Python/config_write.py
      Run as localhost/face_pass for views 
      username/password = admin
  6) Run config_write to create .json file for configs
  7) run Main.py to start detection
  8) To train new person add person from Manage Masters-> Manage Known Person Details and run train_data_maker.py
  9) To View results check Attendance and records section in view
 
