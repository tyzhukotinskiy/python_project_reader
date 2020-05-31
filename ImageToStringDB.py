import mysql.connector
from mysql.connector import Error
import sys  # sys нужен для передачи argv в QApplication
import os
from PyQt5 import QtCore, QtWidgets, uic
import design1  # Это наш конвертированный файл дизайна
import new #переводчик из картинки в текст
import showPhoto
import pyperclip

def connect():
    """ Connect to MySQL database """
    try:
        conn = mysql.connector.connect(host='localhost',
                                       database='wire',
                                       user='tymur',
                                       password='password')
        if conn.is_connected():
            print('Connected to MySQL database')
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM user")

            row = cursor.fetchone()

        while row is not None:
            print(row)
            row = cursor.fetchone()

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
    conn = connecting()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM user where id > 3")
    row = cursor.fetchone()
    while row is not None:
      print(row)
      row = cursor.fetchone()
    