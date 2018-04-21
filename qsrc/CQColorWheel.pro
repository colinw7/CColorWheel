TEMPLATE = lib

TARGET = CQColorWheel

DEPENDPATH += .

QT += widgets

CONFIG += staticlib
CONFIG += debug

QMAKE_CXXFLAGS += -std=c++14

MOC_DIR = .moc

# Input
SOURCES += \
CQColorWheel.cpp \
CQColorWheelCanvas.cpp \

HEADERS += \
../qinclude/CQColorWheel.h \
../qinclude/CQColorWheelCanvas.h \

OBJECTS_DIR = ../obj

DESTDIR = ../lib

INCLUDEPATH += \
. \
../qinclude \
../include \
../../CQUtil/include \
../../CImageLib/include \
../../CFont/include \
../../CFile/include \
../../CMath/include \
../../CStrUtil/include \
../../COS/include \
../../CUtil/include \
