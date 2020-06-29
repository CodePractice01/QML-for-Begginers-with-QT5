import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    property var midX: width/2
    property var midY:height /2


    MyShape{
        color:"orange"
        x: midX - (width /2)
        y: midY - (height / 2) -30
    }

    MyShape{
        color:"lightblue"
        x: midX - (width /2) -55
        y: midY - (height / 2) + 30
    }

    MyShape{
        color:"lightpink"
        x: midX - (width /2) +55
        y: midY - (height / 2) + 30
    }
}
