import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        anchors.centerIn: parent
        width: 300
        height: 400
        color:"lightblue"

        Rectangle{
            color:"orange"
            height: 100
            width: 100

            anchors.margins: 50 //all margins
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 15
        }
    }
}
