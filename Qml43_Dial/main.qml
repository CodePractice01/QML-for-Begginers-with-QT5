import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        width: 200
        height: 400
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: -23
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: label
            color: "#330560"
            text: qsTr("Value")
            anchors.horizontalCenter: parent.horizontalCenter
            styleColor: "#370b63"
            font.bold: true
            font.pointSize: 40
            padding: 50
        }

        Dial {
            id: dial
            padding: 25

             //onMoved: label.text = Math.round(dial.value * 100)

            Connections {
                target: dial
                onMoved: label.text = Math.round(dial.value * 100)
            }
        }
    }
}
