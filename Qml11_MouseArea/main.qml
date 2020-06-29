import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Rectangle{
        id:myArea
        color:"orange"
        width: 200
        height: 200
        anchors.centerIn: parent

        MouseArea{
            id:myMouse
            anchors.fill: parent
            //accept buttons:left click or right click
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            //enable the option that allow to see the x,y value of hover area
            hoverEnabled:true


            //signals
            onClicked: {
                console.log("clicked" + mouse.button)
                if(mouse.button === Qt.LeftButton) parent.color = "green"
                if(mouse.button === Qt.RightButton) parent.color = "black"
            }

            onDoubleClicked: console.log("Doouble click" + mouse.button);
            onPositionChanged: console.log("Position X:" +mouseX+ "Y: " +mouse);
            onEntered: parent.color="blue"
            onExited: parent.color="orange"
        }
    }
}
