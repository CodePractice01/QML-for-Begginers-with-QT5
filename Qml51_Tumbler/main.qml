import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property var lockcode: "032"// "032" == "032"// This is available in all editors.
    property string status: "Locked"

    Popup{
        id: statusPopup
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        width: 200
        height: 300
        modal: true
        focus: true
        anchors.centerIn: parent

        Label{
            id:statusLabel
            anchors.centerIn: parent
            text: status
            font.bold: true
        }

    }

    Column {
        id: column
        width: 272
        height: 400
        spacing: 15
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: label
            color: "#033c73"
            text: qsTr("000")
            font.pointSize: 21
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            id: row
            width: 200
            height: 200
            anchors.horizontalCenter: parent.horizontalCenter

            Tumbler {
                id: tumbler
                model: 10
                onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }

            Tumbler {
                id: tumbler1
                model: 10
                 onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }

            Tumbler {
                id: tumbler2
                model: 10
                 onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }
        }

        Button {
            id: button
            text: qsTr("check")
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                var tempcode = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex

                if(tempcode === lockcode) status = "Unlocked"
                statusPopup.open()
            }


        }
    }
}
