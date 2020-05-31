import sys  # sys нужен для передачи argv в QApplication
import os
from PyQt5 import QtCore, QtWidgets, uic
import design1  # Это наш конвертированный файл дизайна
import new #переводчик из картинки в текст
import showPhoto
import pyperclip

import mysql.connector
import schedule

from contextlib import closing
import pymysql
from pymysql.cursors import DictCursor
with closing(pymysql.connect(...)) as connection:
	with connection.cursor() as cursor:
        query = """
        SELECT
            airport_code
        FROM
            airports
        ORDER BY 
            airport_code DESC
        LIMIT 5
        """
        cursor.execute(query)
        for row in cursor:
            print(row)
connection = pymysql.connect(
    host='localhost',
    user='tymur',
    password='password',
    db='wire',
    charset='utf8mb4',
    cursorclass=DictCursor
)
connection.close()