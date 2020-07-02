import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Grid {
        id: grid
        width: 477
        height: 88
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Slider {
            id: slider
            value: 0

            onMoved: label.text = Math.round(slider.value *100)
        }

        Label {
            id: label
            text: "0"
            font.bold: true
            font.pointSize: 20
            padding: 25
        }
    }
}
