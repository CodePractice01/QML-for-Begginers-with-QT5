import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    color: "#729fcf"
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 245
        y: 56
        width: rectangle1.width
        height: rectangle1.height
        color: "#e13515"

        MouseArea {
            id: mouseArea1

            Connections {
                target: mouseArea1
                onClicked: print("clicked")
            }
        }

    }

    Rectangle {
        id: rectangle1
        x: 127
        y: 56
        width: 100
        height: 100
        color: "#0a3946"

        MouseArea {
            id: mouseArea
            width: 100
            height: 100

            Connections {
                target: mouseArea
                onClicked: {

                    print("clicked")
                    rectangle1.width =50
                    rectangle1.height = 150
                }
            }
        }

    }

    Rectangle {
        id: rectangle2
        x: 370
        y: 56
        width: 100
        height: 100
        color: "#11b0d9"
    }
}
