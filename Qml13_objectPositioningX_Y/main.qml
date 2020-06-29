import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        id:myShape
        width:100
        height: 100
        color: "lightblue"

        //jquery code
        function update(){
            console.log(x + " X " + y )
            label.text = Math.round(x) + " x " + Math.round(y)
        }

        //anchors.centerIn: parent

        x:100
        y:100

        //call js code
        Component.onCompleted: update();
        onXChanged: update();
        onYChanged: update();

        Text{
            id:label
            text:qsTr("text")
            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent
            //move element when is clicked
            drag.target: parent
        }


    }


}
