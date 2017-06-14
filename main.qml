import QtQuick 2.6
import QtQuick.Window 2.2
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

    Mensaje{
        id:mensaje
        anchors.fill: parent
    }
}
