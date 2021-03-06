import QtQuick 2.0
import QtMultimedia 5.8

Rectangle {
    id: rectangle
    property string fondo: "#4286f4"
    width: 150
    height: 40
    color: area.containsMouse ? Qt.darker(fondo) : fondo
    radius: 5

    function texto(t){
        nombre.text = t
        animacion.start()
    }

    Text {
        id: nombre
        color: "#ffffff"
        font.weight: Font.Bold
        font.pointSize: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    SoundEffect {
        id: pop
        source: "pop_drip.wav"
    }

    MouseArea{
        id: area
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            pop.play()
            ventana.presionado(nombre.text)
        }
    }
    NumberAnimation {
        id: animacion
        target: rectangle
        property: "scale"
        from: 0
        to: 1
        duration: 900
        easing.type: Easing.OutElastic
    }
}
