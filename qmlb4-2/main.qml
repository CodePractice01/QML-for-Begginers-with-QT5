import QtQuick 2.12
import QtQuick.Window 2.12


/*
rectangle

its an Item {
    id: there is no circle
}
*/
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Rectangle{
        id: myItem
        anchors.centerIn: parent
        color:"green"
        width: 200
        height: 200
        visible: true

        border.color: "#000"
        border.width: 5

        radius: width

        //gradient property of the Rentagle create a new child called Gradient
        gradient: Gradient
        {
            GradientStop {position: 0.0;color:"red"}
            GradientStop {position: 1.0;color:"blue"}
        }

    }
}
