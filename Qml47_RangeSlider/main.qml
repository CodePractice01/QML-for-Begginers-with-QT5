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
        width: 416
        height: 142
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        RangeSlider {
            id: rangeSlider
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            first.value: 0.25
            second.value: 0.75
        }

        Label {
            id: label
            text: qsTr("x to y")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pointSize: 15
        }
    }

    Connections{
        target: rangeSlider.first
        onValueChanged:{
            label.text =Math.round(rangeSlider.first.value * 100) + " to " + Math.round(rangeSlider.second.value * 100)
        }
    }

    /*

        onValueChanged:{
            label.text =Math.round(rangeSlider.first.value * 100) + " to " + Math.round(rangeSlider.second.value * 100)
        } -- both Connections because, if move slider first or second ->update text
    */

    Connections{
        target: rangeSlider.second
        onValueChanged:{
            label.text =Math.round(rangeSlider.first.value * 100) + " to " + Math.round(rangeSlider.second.value * 100)
        }
    }
}
