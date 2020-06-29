import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id:root


    Rectangle{
        id:shape
        color:"lightblue"
        width: 200
        height: 200
        anchors.centerIn: parent

        Text{
            id:title
            text:Math.round(parent.rotation) // 12.3487
            anchors.centerIn: parent
            font.bold: true
            font.pointSize: 65
            color:"darkred"
        }

        RotationAnimation{
            id:animation
            target:shape
            loops: Animation.Infinite
            from:shape.rotation
            to:360 // -360 bad
            direction: RotationAnimation.Clockwise
            duration:3000
            running:true
        }

        MouseArea {
            id:area
            anchors.fill: parent
            onClicked: {
                if(animation.paused){
                    animation.resume()

                }
                else{
                    animation.pause()
                }
            }
        }


    }
}
