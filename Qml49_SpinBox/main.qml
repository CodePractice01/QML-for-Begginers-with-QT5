import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    property alias labelText: label.text
    title: qsTr("Hello World")

    Grid {
        id: grid
        width: 267
        height: 44
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        columns: 2

        SpinBox {
            id: spinBox

            onValueModified: label.text = value

           /* Connections {
                target: spinBox
                onValueModified: label.text = spinBox.value
            }*/
        }

        Label {
            id: label
            text: spinBox.value
            font.bold: true
            font.pointSize: 25
        }
    }
}
