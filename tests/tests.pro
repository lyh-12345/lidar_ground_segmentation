#========================================================================================

TARGET = tests

TEMPLATE = app

#========================================================================================

QT += core
QT -= gui

#========================================================================================

CONFIG *= link_pkgconfig
CONFIG += c++11

#========================================================================================

DEFINES += QT_DEPRECATED_WARNINGS

QMAKE_CXXFLAGS += --coverage
QMAKE_LFLAGS += --coverage

#========================================================================================

MAIN_DIR = $$PWD

INCLUDEPATH += /usr/src/gtest/include/gtest/
LIBS += -lgtest

SOURCES += main.cpp

include( $$PWD/csf_test/csf_test.pri )
include( $$PWD/../src/csf/csf.pri )

#========================================================================================