import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Rectangle{
        anchors.fill:parent
        color:"grey"
        focus:true

        Rectangle{
           id:rect2
            width: 60
            height: 60
            color:"orange"
            radius: width

            x:rect1.x -5
            y: rect1.y-4

            Behavior on x { SmoothedAnimation {velocity: 50} }
            Behavior on y { SmoothedAnimation {velocity: 100} }
        }

        Rectangle{
           id:rect1
            width: 50
            height: 50
            color:"lightblue"
            radius: width
            x:(parent.width / 2) - (width / 2)
            y:(parent.height / 2) - (height / 2)
        }


        Keys.onRightPressed: rect1.x = rect1.x + 100
        Keys.onLeftPressed: rect1.x = rect1.x - 100
        Keys.onUpPressed: rect1.y = rect1.y - 100
        Keys.onDownPressed:  rect1.y = rect1.y + 100
    }
}
