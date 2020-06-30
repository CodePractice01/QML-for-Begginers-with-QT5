import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 122
        y: 96
        width: 200
        height: 200
        color: "#00884f"
        radius: 15
        border.width: 10
        border.color: "#062d39"

        Rectangle {
            id: rectangle1
            x: 227
            y: 164
            width: 200
            height: 200
            color: "#106c88"
            radius: 15
            border.width: 10
            border.color: "#062d39"
        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:200;anchors_y:96}
}
##^##*/
