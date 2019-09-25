
import MySQLdb as pymysql
from dir import configs
config_obj = configs()
str_cnxn_URL = config_obj.str_cnxn_URL
str_cnxn_user = config_obj.str_cnxn_user
str_cnxn_pass = config_obj.str_cnxn_pass
str_cnxn_db = config_obj.str_cnxn_db
cnxn_db_connect_conn1 = pymysql.connect(host=str_cnxn_URL,
                                                     user=str_cnxn_user,
                                                     passwd=str_cnxn_pass,
                                                     db=str_cnxn_db)

cursor = cnxn_db_connect_conn1.cursor()

def db_execute_insert(str_cnxn_url, str_cnxn_user, str_cnxn_pass, str_cnxn_db, query):
    try:
        str_cnxn_db = str(str_cnxn_db)
        str_cnxn_url = str(str_cnxn_url)
        str_cnxn_pass = str(str_cnxn_pass)
        str_cnxn_user = str(str_cnxn_user)
        # Connect to server
        cnxn_db_connect = pymysql.connect(str_cnxn_url, str_cnxn_user, str_cnxn_pass, str_cnxn_db)
        # Creating a cursor with the cnxn_db_connect object
        cursor = cnxn_db_connect.cursor()
        # converting query into string
        query = str(query)
        # executing the query on server
        cursor.execute(query)
        # commiting the query
        cursor.execute("COMMIT")
        # closing the connection
        cnxn_db_connect.close()
        print ("QUERY EXECUTED SUCCESSFULLY")
    except:

        pass

def execute_insert_1conn(query):
    query = str(query)
    try:
        global cursor
        global cnxn_db_connect_conn1
        cursor.execute(query)
        cnxn_db_connect_conn1.commit()
    except:
        cnxn_db_connect_conn1 = pymysql.connect(host=str_cnxn_URL,
                                                     user=str_cnxn_user,
                                                     passwd=str_cnxn_pass,
                                                     db=str_cnxn_db)
        cursor = cnxn_db_connect_conn1.cursor()
        cursor.execute(query)
        cursor.execute("COMMIT")
        pass
def execute_insert(query):
    try:

        global str_cnxn_db, str_cnxn_URL, str_cnxn_pass, str_cnxn_user
        str_cnxn_db = str(str_cnxn_db)
        str_cnxn_url = str(str_cnxn_URL)
        str_cnxn_pass = str(str_cnxn_pass)
        str_cnxn_user = str(str_cnxn_user)

        cnxn_db_connect = pymysql.connect(str_cnxn_url, str_cnxn_user, str_cnxn_pass, str_cnxn_db)
        # print "CONNECTED"
        # Creating a cursor with the cnxn_db_connect object

        cursor = cnxn_db_connect.cursor()

        # converting query into string
        query = str(query)
        # executing the query on server
        cursor.execute(query)
        # print "QUERY DONE"
        # commiting the query
        cursor.execute("COMMIT")
        # closing the connection
        cnxn_db_connect.close()
        # print "QUERY EXECUTED SUCCESSFULLY"
    except:
        pass


def fetch_result(query):
    global str_cnxn_db, str_cnxn_URL, str_cnxn_pass, str_cnxn_user
    str_cnxn_db = str(str_cnxn_db)
    str_cnxn_url = str(str_cnxn_URL)
    str_cnxn_pass = str(str_cnxn_pass)
    str_cnxn_user = str(str_cnxn_user)

    cnxn_db_connect = pymysql.connect(str_cnxn_url, str_cnxn_user, str_cnxn_pass, str_cnxn_db)
    # Creating a cursor with the cnxn_db_connect object

    cursor = cnxn_db_connect.cursor(pymysql.cursors.DictCursor)
    # converting query into string
    query = str(query)
    # executing the query on server
    cursor.execute(query)
    # row = cursor.fetchone()
    result_set = cursor.fetchall()

    return result_set


def fetch_result_check(query):
    global str_cnxn_db, str_cnxn_URL, str_cnxn_pass, str_cnxn_user
    str_cnxn_db = str(str_cnxn_db)
    str_cnxn_url = str(str_cnxn_URL)
    str_cnxn_pass = str(str_cnxn_pass)
    str_cnxn_user = str(str_cnxn_user)

    cnxn_db_connect = pymysql.connect(str_cnxn_url, str_cnxn_user, str_cnxn_pass, str_cnxn_db)
    cursor = cnxn_db_connect.cursor(pymysql.cursors.DictCursor)
    # converting query into string
    query = str(query)
    # executing the query on server
    cursor.execute(query)

    result_set = cursor.fetchone()

    return result_set
