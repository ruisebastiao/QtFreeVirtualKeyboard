#-------------------------------------------------
#
# Project created by QtCreator 2013-04-04T23:11:38
#
#-------------------------------------------------

QT       += qml quick quick-private gui-private


TARGET = freevirtualkeyboard

include(../../module.pri)




SOURCES += $$PWD/src/VirtualKeyboardInputContextPlugin.cpp \
    $$PWD/src/VirtualKeyboardInputContext.cpp \
    $$PWD/src/DeclarativeInputEngine.cpp

HEADERS += $$PWD/src/VirtualKeyboardInputContextPlugin.h\
    $$PWD/src/VirtualKeyboardInputContext.h \
    $$PWD/src/DeclarativeInputEngine.h


RESOURCES += \
    $$PWD/src/virtualkeyboard.qrc
