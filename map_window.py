
'''
from PyQt5.QtCore import QUrl, QObject, pyqtSignal, pyqtSlot, QTimer, pyqtProperty
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQuick import QQuickView
from PyQt5.QtQml import QQmlApplicationEngine
'''
from PyQt5.QtCore import * 
from PyQt5.QtGui import * 
from PyQt5.QtQml import * 
from PyQt5.QtWidgets import *
from PyQt5.QtQuick import *  
#from PyQt5.QtMultimedia import* # For use audio alarms
from PyQt5.QtChart import* #  pip install PyQtChart


from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtGui import QGuiApplication, QIcon

from PyQt5 import QtGui, QtCore, Qt, QtGui, QtWidgets, QtQml, QtQuick, QtQuickWidgets
from PyQt5.QtCore import QUrl, QObject, pyqtSignal, pyqtSlot, QTimer, pyqtProperty
from PyQt5.QtCore    import pyqtSlot, pyqtSignal, QUrl, QObject,QStringListModel, Qt
from PyQt5.QtQuick   import QQuickView
from PyQt5.QtWidgets import QApplication, QCheckBox, QGridLayout, QGroupBox
from PyQt5.QtWidgets import QMenu, QPushButton, QRadioButton, QVBoxLayout, QWidget, QSlider
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtGui import QGuiApplication, QIcon

import sys
import time
#import serial

#ser = serial.Serial("COM1", 9600)

S1 = 888
lat = -6.86447
long = 107.5895
class table(QObject):
    lat_val = pyqtSignal(str)
    
    def __init__(self, parent = None):
        super().__init__(parent)
        self.app = QApplication(sys.argv)
        self.app.setWindowIcon(QIcon("images/chip.ico"))
        self.engine = QQmlApplicationEngine(self)
        self.engine.rootContext().setContextProperty("backend", self)    
        self.engine.load(QUrl("plain_window.qml"))
        '''    
        #self.app = QApplication(sys.argv)
        
        #self.app.setWindowIcon(QIcon("images/chip.ico"))
        self.engine = QQmlApplicationEngine(self)
        self.engine.load(QUrl("plain_window.qml"))
        self.engine.rootContext().setContextProperty("backend", self)
        
        #self.show()
        
        #windows = self.rootObject()
        
        #### SETUP CUSTOM ##############################################
        #self.setupData()
        #self.comSerialok = 0 
        #self.nodin = [0,0,0,0]
        #self.iniClock()
        #sys.exit(self.app.exec_())
        '''
    @pyqtSlot(str)
    def button_test(self, message):
        print(message)
        #ser.write(str(message).encode())
    
    
    
    
    @pyqtSlot(result=float)
    def get_adc1(self):  return S1
    
    @pyqtSlot(result=float)
    def get_lat(self):  return lat
    
    @pyqtSlot(result=float)
    def get_long(self):  return long
    
    print("wkwk")

if __name__ == "__main__":
    main = table()
    
    '''
    view = QQmlApplicationEngine()
    app = QApplication(sys.argv)
    context = view.rootContext()
    context.setContextProperty("gui_qml", main)
    view.load(QUrl('plain_window.qml'))
    gui_qml = table()
    timer = QTimer()
    timer.start(10) 
    
    
    
    #root = view.rootObject()
    #timer.timeout.connect(root.updateValue)

    engine = QQmlApplicationEngine(app) 
    engine.quit.connect(app.quit) 
    #view.show()
    sys.exit(app.exec_())
    
    '''