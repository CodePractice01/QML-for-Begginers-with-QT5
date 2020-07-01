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
        x: 179
        y: 230
        width: 132
        height: 112
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Dial {
        id: dial
        x: 88
        y: 335
        width: 122
        height: 115
    }

    CheckBox {
        id: checkBox
        x: 441
        y: 65
        text: qsTr("Check Box")
    }

    DelayButton {
        id: delayButton
        x: 458
        y: 142
        text: qsTr("Delay Button")
    }
}
