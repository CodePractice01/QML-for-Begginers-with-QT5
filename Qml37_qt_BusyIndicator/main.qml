import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    BusyIndicator {
        id: busyIndicator
        x: 254
        y: 230
        width: 114
        height: 70
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Label {
        id: label
        x: 302
        y: 175
        text: qsTr("Progress = ") +busyIndicator.running
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: mouseArea
            width: 100
            height: 100

            anchors.fill:parent
            onClicked: {
                if(busyIndicator.running)
                {
                    console.log("turning off")
                    busyIndicator.running =  false
                }
                else{
                    console.log("turning on")
                    busyIndicator.running =  true
                }
            }
        }
    }
}
