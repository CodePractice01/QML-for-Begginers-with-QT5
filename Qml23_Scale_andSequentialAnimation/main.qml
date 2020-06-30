import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        id:myShape
        color:"lightblue"
        width: 200
        height: 200
        anchors.centerIn: parent
        clip:true

        Text{
            id:title
            text:qsTr("SCALE")
            font.bold: true
            font.pointSize: 66
            color:"lightpink"
            rotation: -45
            anchors.centerIn: parent
        }

        SequentialAnimation{
            id:animation
            running: true
            loops: Animation.Infinite

            ScaleAnimator{
                id:aniShrink
                target:myShape
                from:1 //100%
                to: 0.5 //50%
                duration: 3000
                running:tue
            }

            ScaleAnimator{
                id:aniGrow
                target:myShape
                from:0.5
                to: 1
                duration: 3000
                running:true
            }


        }
    }
}
