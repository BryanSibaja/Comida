TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    imagenes/arroz.png \
    imagenes/chocolate.png \
    imagenes/coco.png \
    imagenes/dona.png \
    imagenes/yogurt.png \
    imagenes/emparedado.png \
    imagenes/fideos.png \
    imagenes/galletas.png \
    imagenes/gelatina.png \
    imagenes/golosinas.png \
    imagenes/hamburguesa.png \
    imagenes/huevos.png \
    imagenes/jalea.png \
    imagenes/jamon.png \
    imagenes/helado.png \
    imagenes/pan.png \
    imagenes/papas.png \
    imagenes/pasta.png \
    imagenes/pastel.png \
    imagenes/patatas.png \
    imagenes/pescado.png \
    imagenes/pizza.png \
    imagenes/pollo.png \
    imagenes/queque.png \
    imagenes/queso.png \
    imagenes/salchicha.png \
    imagenes/semillas.png \
    imagenes/tostada.png \
    datos.js \
    logica.js \
    Carta.qml \
    Boton.qml \
    Mensaje.qml \
    imagenes/lose.svg \
    imagenes/win.svg
