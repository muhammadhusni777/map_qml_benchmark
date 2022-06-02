import sys

from PyQt5 import QtGui, QtCore, Qt
from PyQt5.QtCore import QUrl, QObject, pyqtSignal, pyqtSlot, QTimer, pyqtProperty
from PyQt5.QtCore    import pyqtSlot, pyqtSignal, QUrl, QObject,QStringListModel, Qt
from PyQt5.QtQuick   import QQuickView
from PyQt5.QtWidgets import QApplication, QCheckBox, QGridLayout, QGroupBox
from PyQt5.QtWidgets import QMenu, QPushButton, QRadioButton, QVBoxLayout, QWidget, QSlider
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtGui import QGuiApplication, QIcon




class table(QQuickView):
    def __init__(self):
        super().__init__()
        self.setSource(QUrl("plain_window.qml"))
        #self.setTitle("ARDUMEKA PYTHON QML DEMO")
        
        self.rootContext().setContextProperty("table", self)
        self.setGeometry(600, 25, 700, 700)
        self.show()
    


if __name__ == '__main__':

    print("wkwk")
    app = QApplication(sys.argv)
    #app.setWindowIcon(QIcon("garuda.png"))
    w = table()
    sys.exit(app.exec_())