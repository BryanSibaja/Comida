import QtQuick 2.0
import QtQuick.Controls 2.1

Rectangle{
    property alias texto: respuesta.text
    visible: false

    function activar(ganar){
        visible = true;
        if(ganar){
            estado.source = "imagenes/win.svg"
        }else{
            estado.source = "imagenes/lose.svg"
        }
    }

    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 20
        Image {
            id: estado
            height: parent.height / 2
            width: height
            opacity: 1
            source: "imagenes/lose.svg"
            anchors.horizontalCenter: parent.horizontalCenter

        }

        Text {
            id: respuesta
            color: "#211860"
            font.bold: true
            font.pointSize: 50

            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: boton
            text: "Again ⟳"
            contentItem: Text {
                    text: boton.text
                    font: boton.font
                    color: "#ffffff"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 40
                color: boton.down ? "#194060" : "#28679b"
                radius: 4
            }
            onClicked: {
                ventana.iniciar()
            }
        }
    }
}
