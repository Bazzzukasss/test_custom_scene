QT += core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17
DESTDIR = ../bin

SOURCES += \
    src/main.cpp \
    src/MainWindow.cpp

HEADERS += \
    inc/MainWindow.h

FORMS += \
    forms/MainWindow.ui

INCLUDEPATH += \
    inc\
    $$PWD/../custom_scene/inc

LIBS *= -L$$OUT_PWD/$$DESTDIR -lcustom_scene

unix:LIBS += -lGL
win32:LIBS += -lopengl32 -lglu32

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
