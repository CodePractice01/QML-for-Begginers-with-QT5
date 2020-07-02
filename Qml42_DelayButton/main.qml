import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row {
        id: row
        width: 305
        height: 50
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        DelayButton {
            id: delayButton
            text: qsTr("Delete Everything")
            delay: 1000
            onProgressChanged:{

                label.text = Math.round(progress *100)

                if(progress === 0){
                    text = "Delete Everything"
                    label.text = "status"
                }
            }

            onActivated: {
                label.text = "Done";
                text ="Boom"
            }

           /* Connections {
                target: delayButton
                onActivated: {label.text = "Done"; text ="Boom"}
            }*/
            /*Connections {
                target: delayButton
                onProgressChanged: label.text = progress
            }*/
        }

        Label {
            id: label
            color: "#6c026c"
            text: qsTr("Status")
            styleColor: "#090b65"
            font.pointSize: 25
        }
    }
}
