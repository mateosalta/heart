TEMPLATE = app
TARGET = heartlistener

load(ubuntu-click)
UBUNTU_MANIFEST_FILE=manifest.json
QT += quick bluetooth

# Input
HEADERS += deviceinfo.h \
           heartrate.h
SOURCES += deviceinfo.cpp \
           heartrate.cpp \
           main.cpp

OTHER_FILES += assets/*.qml \
               assets/*.js \
               heart.desktop

RESOURCES += \
             resources.qrc
             
             desktop_file.path = /
desktop_file.files = $$OUT_PWD/uVolMan.desktop 
desktop_file.CONFIG += no_check_exist 

target.path = $$[QT_INSTALL_EXAMPLES]/bluetooth/heartlistener
INSTALLS += target desktop_file
