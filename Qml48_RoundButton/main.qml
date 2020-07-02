import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    property var value: 0
    Row {
        id: row
        width: 559
        height: 168
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        RoundButton {
            id: roundButton
            text: "+"
            font.pointSize: 15
            onClicked: value++
        }

        RoundButton {
            id: roundButton1
            text: "-"
             font.pointSize: 15
             onClicked: value--
        }

        Label {
            id: label
            text: "VALUE : " +value
            font.bold: true
            font.pointSize: 18
        }
    }
}
