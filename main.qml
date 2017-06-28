import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.1

import "logica.js" as Experto
import "datos.js" as Datos

Window {
    id:ventana
    visible: true
    width: 640
    height: 480
    title: "Food"
    minimumHeight: 500
    minimumWidth: 450

    function iniciar(){
        Experto.load()
    }

    function presionado(opc){
        Experto.presionado(opc)
    }

    Component.onCompleted: {
        Experto.datos = Datos.datos
        iniciar()
    }

    Image {
        id: fondo
        fillMode: Image.Tile
        source: "imagenes/green_dust_scratch.png"
        anchors.fill: parent
    }

    Carta{
        id: carta
        height: parent.height * 0.6
        anchors.top: parent.top
        anchors.topMargin: 41
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        width: height
        imagen: "imagenes/arroz.png"
    }
    Grid{
        id: opciones
        anchors.bottomMargin: 30
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 9
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        visible: !mensaje.visible
        rows: 2
        columns: 2
        spacing: 5

        Boton{
            id: opcion1
            fondo: '#d81d13'
        }
        Boton{
            id: opcion2
            fondo: '#8626e5'
        }
        Boton{
            id: opcion3
            fondo: '#198e23'
        }
        Boton{
            id: opcion4
            fondo: '#133663'
        }
    }

    Button {
        id: boton
        text: "Ayuda 🛈"
        contentItem: Text {
            text: boton.text
            font: boton.font
            color: "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
        anchors.top: parent.top
        anchors.right: parent.right
        background: Rectangle {
            implicitWidth: 60
            implicitHeight: 35
            color: boton.down ? "#194060" : "#28679b"
            radius: 4
        }
        onClicked: {
            info.open()
        }
    }

    Dialog {
        id: info
        modal: true
        focus: true
        title: "Instrucciones"
        x: (ventana.width - width) / 2
        y: ventana.height / 4
        width: Math.min(ventana.width, ventana.height) / 3 * 2
        contentHeight: aboutColumn.height

        Column {
            id: aboutColumn
            spacing: 20

            Label {
                width: info.availableWidth
                text: "Aprende el vocabulario de la comida"
                wrapMode: Label.Wrap
                font.pixelSize: 12
            }

            Label {
                width: info.availableWidth
                text: "Para jugar presiona sobre el nombre que corresponde "+
                      " a la imagen que aparece en pantalla ¡Adelante diviértete!"
                wrapMode: Label.Wrap
                font.pixelSize: 12
            }
        }
    }

    Mensaje{
        id:mensaje
        anchors.fill: parent
    }
}
