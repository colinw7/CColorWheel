TEMPLATE = app

TARGET = CQColorWheelTest

DEPENDPATH += .

QT += widgets

CONFIG += debug

# Input
SOURCES += \
CQColorWheelTest.cpp \

HEADERS += \
CQColorWheelTest.h \

DESTDIR     = ../bin
OBJECTS_DIR = ../obj
LIB_DIR     = ../lib

INCLUDEPATH += \
../qinclude \
../include \
../../CQUtil/include \
../../CUtil/include \
../../CMath/include \
../../COS/include \
.

unix:LIBS += \
-L$$LIB_DIR \
-L../../CQUtil/lib \
-L../../CImageLib/lib \
-L../../CFont/lib \
-L../../CConfig/lib \
-L../../CFile/lib \
-L../../CFileUtil/lib \
-L../../CMath/lib \
-L../../CUtil/lib \
-L../../CRegExp/lib \
-L../../CStrUtil/lib \
-L../../COS/lib \
-lCQColorWheel -lCColorWheel \
-lCQUtil \
-lCImageLib -lCFont -lCConfig \
-lCFile -lCFileUtil -lCMath -lCRegExp \
-lCUtil -lCStrUtil -lCOS \
-ljpeg -lpng -ltre
