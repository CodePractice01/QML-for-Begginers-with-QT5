import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    width: 600
    height: 400
    property alias name: textField.text

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        id: label
        text: qsTr("you are on page 1")
    }

    Column {
        id: column
        width: 200
        height: 204
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            text: qsTr("Enter your name")
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextField {
            id: textField
            anchors.verticalCenter: parent.verticalCenter
            placeholderText: qsTr("Text Field")
        }
    }
}
