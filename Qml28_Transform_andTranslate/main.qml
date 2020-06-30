import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item{
        id:root
        rotation: 0
        anchors.centerIn: parent


        Rectangle{
            id:orangeRect
            color:"orange"
            opacity: 0.5
            width: 300
            height: 300
            radius: width
            border.width: 2
            border.color: "grey"
            anchors.centerIn: parent
            transform: Translate{y:-100}
        }

        Rectangle{
            id:pinkRect
            color:"lightpink"
            opacity: 0.5
            width: 300
            height: 300
            radius: width
            border.width: 2
            border.color: "grey"
            anchors.centerIn: parent
            transform: Translate{y: 100; x:-100}
        }

        Rectangle{
            id:blueRect
            color:"lightblue"
            opacity: 0.5
            width: 300
            height: 300
            radius: width
            border.width: 2
            border.color: "grey"
            anchors.centerIn: parent
            transform: Translate{y: 100; x:100}
        }

        Rectangle{
            id:centerArea
            color:"white"
            opacity: 0.8
            width: 50
            height: 50
            radius: width
            border.width: 2
            border.color: "grey"
            anchors.centerIn: parent
            Rectangle{
                id:centerCircle
                color:"gray"
                opacity: 1
                width: 5
                height: 5
                radius: width
                border.width: 2
                border.color: "grey"
                anchors.centerIn: parent
            }

        }

        RotationAnimation{
            target:root
            from:360
            to: 0
            duration:5000
            direction: RotationAnimation.Counterclockwise
            loops:Animation.Infinite
            running: true
        }
    }
}
