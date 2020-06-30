import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 289
        y: 43
        width: 200
        height: 200
        color: "#206bbd"
        property string title: "Title"

        Text {
            id: element
            color: "#ded9d9"
            text: parent.title
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.italic: false
            font.bold: true
            verticalAlignment: Text.AlignTop
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 35
        }
    }

    Rectangle {
        id: rectangle1
        x: 20
        y: 43
        width: 200
        height: 200
        color: "#7d06b1"

        MouseArea {
            id: mouseArea
            width: 100
            height: 100

            Connections {
                target: mouseArea
                onClicked: rectangle.title="Hello"
            }
        }
    }
}
