import mysql.connector
from mysql.connector import Error
import sys  # sys нужен для передачи argv в QApplication
import os
from PyQt5 import QtCore, QtWidgets, uic
import design1  # Это наш конвертированный файл дизайна
import new #переводчик из картинки в текст
import showPhoto
import pyperclip
import datetime
import re
from translate import Translator


def connectionDb(query):
    """ Connect to MySQL database """
    try:
        conn = mysql.connector.connect(host='localhost',
                                       database='translator',
                                       user='tymur',
                                       password='password')
        if conn.is_connected():
            print('Connected to MySQL database')
            print(query)
            cursor = conn.cursor()
            print(cursor.execute(query))
            print("||||||||end query")
            if query[0:6] != 'select':
            	conn.commit()
            else :
            	return cursor.fetchall()

    except Error as e:
        print(e)

    finally:
        conn.close()


class ExampleApp(QtWidgets.QMainWindow, design1.Ui_MainWindow, showPhoto.showPhoto):

	translate_text = 0

	def __init__(self):
		# Это здесь нужно для доступа к переменным, методам
		# и т.д. в файле design.py
		super().__init__()
		self.setupUi(self)  # Это нужно для инициализации нашего дизайна
		self.successCopy.hide()
		self.dont_language.hide()
		self.wrongExtension.hide()
		self.groupBox_2.hide()
		self.translateField.hide()
		self.dont_language_2.hide()
		self.btnSelectImg.clicked.connect(self.browse_image)
		self.radioButton.setStyleSheet('QRadioButton::indicator::checked {image: url(radioImage.png); width: 13px; height: 13px;}')
		self.radioButton_2.setStyleSheet('QRadioButton::indicator::checked {image: url(radioImage.png); width: 13px; height: 13px;}')
		self.radioButton_3.setStyleSheet('QRadioButton::indicator::checked {image: url(radioImage.png); width: 13px; height: 13px;}')
		self.btnCopy.clicked.connect(self.copy_text)
		self.btnTranslate.clicked.connect(self.openTranslator)
		self.listHistory.itemClicked.connect(self.getCurrentItemText)
		self.listHistoryOld.itemClicked.connect(self.getCurrentItemText)
		self.fillOldHistory()
		self.showIcon(self.ukr_icon, 'ukraine.png');
		self.showIcon(self.usa_icon, 'usa.png');
		self.showIcon(self.rus_icon, 'russia.png');
		self.showIcon(self.photo_icon, 'image.png')

	


	def browse_image(self):

		language = 'smth'
		if self.radioButton.isChecked():
			language = 'eng'
		if self.radioButton_2.isChecked():
			language = 'rus'
		if self.radioButton_3.isChecked():
			language = 'ukr'


		file = QtWidgets.QFileDialog.getOpenFileName(self, 'Open File')[0]
		self.showImageText(file, language)
		
	def showImageText(self, file, language):

		# Local time without timezone information printed in ISO 8601 format
		dateTime = datetime.datetime.today().isoformat(" ").split(".")[0];

		if (language == 'smth'):
			self.dont_language.show()
			self.groupBox.setStyleSheet('background: rgba(200, 10, 10, 0.3);')
			self.timer = QtCore.QTimer()
			self.timer.timeout.connect(self.timeOutDontLanguage)
			self.timer.start(5000)
			return
		if len(file) != 0:
			extensions = ['png', 'jpg', 'jpeg']
			print(file)
			fileL = file.split("/")[-1]
			print(fileL)
			fileL = fileL.split('.')
			if len(fileL) >= 2:
				fileExtension = fileL[-1].lower()
				if fileExtension in extensions:
					print("Yes")
				else:
					print("No")
					self.wrongExtension.show()
					return
			else:
				print("The file doesn't have an extention.")
				self.wrongExtension.show()
				return
			self.photo_icon.hide();
			self.showPhoto(file)
			some_text = new.translate_some_text(file, language)
			self.UrlToImage.setText(some_text)
			query = "insert into last_images (path_to_image, date, result_text, language) values ('"+file+"', '"+dateTime+"', '"+self.getResultTextForDB(some_text)+"', '"+language+"')"
			connectionDb(query)
			self.listHistory.addItem(self.getResultTextForDB(some_text))



	def copy_text(self):
		pyperclip.copy(self.UrlToImage.toPlainText())
		self.successCopy.show()
		self.timer = QtCore.QTimer()
		self.timer.timeout.connect(self.timeOut)
		self.timer.start(5000)


	def timeOut(self):
		self.successCopy.hide()

	def timeOutDontLanguage(self):
		self.dont_language.hide()
		self.groupBox.setStyleSheet('background: transparent;')

	def timeOutDontLanguage_2(self):
		self.dont_language_2.hide()
		self.groupBox_2.setStyleSheet('background: transparent;')

	def openTranslator(self):
		if self.translate_text == 0:
			self.groupBox_2.show()
			self.translate_text = 1
		else :
			self.translateField.show()
			self.getTranslate(self.UrlToImage.toPlainText())

	def getResultTextForDB(self, text):
		end_string = len(text)
		if len(text) > 45 :
			end_string = 45
		text = text.replace('\n', ' ')
		text = text.replace("'", '')
		return text[0:end_string]

	def getCurrentItemText(self, item):
		query = "select path_to_image, language from last_images where result_text = '"+item.text()+"' order by id desc limit 1"
		dataImage = connectionDb(query)
		for row in dataImage:
			self.showImageText(row[0], row[1])
			break

	def fillOldHistory(self):
		query = "select distinct result_text from last_images limit 10"
		history = connectionDb(query)
		for x in history:
			x = str(x)
			length = len(x)
			x = x[2:length-3]
			self.listHistoryOld.addItem(x)

	def getTranslate(self, text):
		language = 'smth'
		if self.radioButton_7.isChecked():
			language = 'eng'
		if self.radioButton_8.isChecked():
			language = 'rus'
		if self.radioButton_9.isChecked():
			language = 'ukr'

		if (language == 'smth'):
			self.dont_language_2.show()
			self.groupBox_2.setStyleSheet('background: rgba(200, 10, 10, 0.3);')
			self.timer = QtCore.QTimer()
			self.timer.timeout.connect(self.timeOutDontLanguage_2)
			self.timer.start(5000)
		else :
			translator = Translator(to_lang=language)
			translation = translator.translate(text)
			self.translateField.setText(translation)


def main():
	app = QtWidgets.QApplication(sys.argv)  # Новый экземпляр QApplication
	window = ExampleApp()  # Создаём объект класса ExampleApp
	window.show()  # Показываем окно
	app.exec_()  # и запускаем приложение

if __name__ == '__main__':  # Если мы запускаем файл напрямую, а не импортируем
	main()  # то запускаем функцию main()