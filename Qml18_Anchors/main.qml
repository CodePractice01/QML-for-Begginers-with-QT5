import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    RectangleShape{
        id:shapeCenter
        anchors.centerIn: parent

        text: "Hello"

        Rectangle{
            width: 25
            height: 25
            color:"lightblue"
            //no anchor by default
           // anchors.centerIn: parent
            //anchors.fill:parent
            anchors.right: parent.right //put into the right
            anchors.bottom: parent.bottom

        }


    }

    RectangleShape{
        id:shapeTop
        text: "top"
        color:"teal"
        anchors.bottom: shapeCenter.top
        anchors.left: shapeCenter.left
    }

    RectangleShape{
        id:shapeBottom
        text: "Bottom"
        color:"orange"
        anchors.top: shapeCenter.bottom
        anchors.left: shapeCenter.left
    }

    RectangleShape{
        id:shapeLeft
        text: "Bottom"
        color:"lightpink"
        anchors.top: shapeCenter.top
        anchors.right: shapeCenter.left
    }


    RectangleShape{
        id:shapeRight
        text: "Bottom"
        color:"lightpink"
        anchors.top: shapeCenter.top
        anchors.left: shapeCenter.right
    }

}
