# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'translator.ui'
#
# Created by: PyQt5 UI code generator 5.14.2
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_MainWindowTranslator(object):
    def setupUi(self, MainWindowTranslator):
        MainWindowTranslator.setObjectName("MainWindowTranslator")
        MainWindowTranslator.resize(800, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindowTranslator)
        self.centralwidget.setObjectName("centralwidget")
        MainWindowTranslator.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindowTranslator)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 800, 22))
        self.menubar.setObjectName("menubar")
        MainWindowTranslator.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindowTranslator)
        self.statusbar.setObjectName("statusbar")
        MainWindowTranslator.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindowTranslator)
        QtCore.QMetaObject.connectSlotsByName(MainWindowTranslator)

    def retranslateUi(self, MainWindowTranslator):
        _translate = QtCore.QCoreApplication.translate
        MainWindowTranslator.setWindowTitle(_translate("MainWindowTranslator", "MainWindow"))
