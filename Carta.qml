import QtQuick 2.0

Item{
    id: carta
    property alias imagen: image.source

    onImagenChanged: animacion.start()

    Rectangle{
        color: "#00ffffff"
        radius: 0
        border.color: "#7483e7"
        border.width: 13
        anchors.fill: parent
        Image {
            id: image
            height: parent.height - 30
            width: parent.width - 30
            anchors.centerIn: parent
        }
        NumberAnimation {
            id: animacion
            target: carta
            property: "scale"
            from: 0
            to: 1
            duration: 200
            easing.type: Easing.InOutQuad
        }
    }
}
