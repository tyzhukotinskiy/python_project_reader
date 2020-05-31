from PyQt5 import QtCore, QtGui, QtWidgets

class showPhoto(object):
	"""docstring for ClassName"""
		
	def showPhoto(self, fileName):
		self.photo.setPixmap(QtGui.QPixmap(fileName))

	def showIcon(self, country, fileName):
		country.setPixmap(QtGui.QPixmap(fileName))