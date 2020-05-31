import mysql.connector
from mysql.connector import Error

def connect():
    """ Connect to MySQL database """
    try:
        conn = mysql.connector.connect(host='localhost',
                                       database='wire',
                                       user='tymur',
                                       password='password')

    except Error as e:
        print(e)

    finally:
        conn.close()

def connecting():
    """ Connect to MySQL database """
    try:
        conn = mysql.connector.connect(host='localhost',
                                       database='wire',
                                       user='tymur',
                                       password='password')
        if conn.is_connected():
            print('Connected to MySQL database')
            return conn;
            

    except Error as e:
        print(e)

   

if __name__ == '__main__':
    connect()
    