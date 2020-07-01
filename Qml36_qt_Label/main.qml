import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Label {
        id: label
        x: 108
        y: 82
        text: qsTr("This is a label")
    }

    Label {
        id: label1
        x: 117
        y: 121
        width: 236
        height: 43
        color: "#3c0767"
        text: qsTr("This is a looooooonnng label title-probably the longest")
        wrapMode: Text.WordWrap
    }

    Label {
        id: label2
        x: 108
        y: 197
        text: qsTr("This is <font color='lightblue'><b>H<i>Ml</i></b> !!! </font>")
    }
}
