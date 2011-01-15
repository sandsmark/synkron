TEMPLATE = app
QT += network xml
INCLUDEPATH += ./src
HEADERS += ./src/MainWindow.h \
     ./src/syncpage.h \
     ./src/mtfile.h \
     ./src/mtadvancedgroupbox.h \
     ./src/extendedlineedit.h \
     ./src/extendedlistwidget.h \
     ./src/extendedtreewidget.h \
     ./src/syncfolders.h \
     ./src/mtstringset.h \
     ./src/mtpathdialogue.h \
     ./src/mtdictionary.h
FORMS += ./ui/main_window.ui \
     ./ui/about.ui \
     ./ui/multisync_page.ui \
     ./ui/sync_view_item.ui
SOURCES += ./src/main.cpp \
     ./src/sync.cpp \
     ./src/restore.cpp \
     ./src/blacklist.cpp \
     ./src/multisync.cpp \
     ./src/scheduler.cpp \
     ./src/filters.cpp \
     ./src/mtfile.cpp \
     ./src/syncfolders.cpp \
     ./src/syncview.cpp \
     ./src/analyse.cpp \
     ./src/tabs.cpp \
     ./src/other.cpp \
     ./src/settings.cpp \
     ./src/syncdb.cpp \
    src/MainWindow.cpp
RESOURCES += resources.qrc \
     i18n.qrc
DESTDIR = ./
unix {
     OBJECTS_DIR = .build.unix/
     MOC_DIR = .build.unix/
     RCC_DIR = .build.unix/
}
unix:!macx {
     DEFINES += USE_UNIX_TOUCH_COMMAND
     TARGET = synkron
}
macx {
     # Comment the following line to use the NSFileManager class
     # to perform copy operations instead of QFile + /usr/bin/touch:
     DEFINES += USE_UNIX_TOUCH_COMMAND
     SOURCES += ./src/mtfile_macx.mm
     LIBS += -framework Carbon
     ICON = images/Synkron128.icns
     icons.path = Contents/Resources
     icons.files = images/slist.icns
     QMAKE_BUNDLE_DATA += icons
     CONFIG += x86
     QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.4
     QMAKE_MAC_SDK = /Developer/SDKs/MacOSX10.5.sdk
}
win32 {
     # If not commented, the following line ensures that Synkron is compiled
     # as a portable app. More info at portableapps.com
     # DEFINES += PORTABLE_APP
     OBJECTS_DIR = .build.win32/
     MOC_DIR = .build.win32/
     RCC_DIR = .build.win32/
     RC_FILE = Synkron.rc
}
TRANSLATIONS += i18n/Synkron-Arabic.ts \
     i18n/Synkron-Brazilian_Portuguese.ts \
     i18n/Synkron-Chinese.ts \
     i18n/Synkron-Czech.ts \
     i18n/Synkron-Dutch.ts \
     i18n/Synkron-Finnish.ts \
     i18n/Synkron-French.ts \
     i18n/Synkron-German.ts \
     i18n/Synkron-Italian.ts \
     i18n/Synkron-Japanese.ts \
     i18n/Synkron-Polish.ts \
     i18n/Synkron-Russian.ts \
     i18n/Synkron-Slovak.ts \
     i18n/Synkron-Spanish.ts \
     i18n/Synkron-Valencian.ts \
     i18n/Synkron-Romanian.ts
