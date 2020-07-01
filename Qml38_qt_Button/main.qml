import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    color: "#415871"
    title: qsTr("Hello World")

    Row {
        id: row
        x: 0
        y: 0
        width: 640
        height: 45

        Button {
            id: button
            text: qsTr("Cat")
        }

        Button {
            id: button1
            text: qsTr("Dog")
        }

        Button {
            id: button2
            text: qsTr("Fish")
        }

        Button {
            id: button3
            text: qsTr("Background")
        }
    }

    Image {
        id: image
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 18
        anchors.right: parent.right
        anchors.rightMargin: 246
        anchors.left: parent.left
        anchors.leftMargin: 27
        anchors.top: parent.top
        anchors.topMargin: 102
        fillMode: Image.PreserveAspectFit
        source: "qrc:/qtquickplugin/images/template_image.png"
    }

    Connections{
        target:button
        onClicked:image.source="qrc:/images/images/cat.jpeg"
    }

    Connections{
        target:button1
        onClicked:image.source="qrc:/images/images/dog.jpg"
    }

    Connections{
        target:button2
        onClicked:image.source="qrc:/images/images/fish.jpeg"
    }

    Connections{
        target:button3
        onClicked:image.source="qrc:/images/images/bg.jpg"
    }
}
