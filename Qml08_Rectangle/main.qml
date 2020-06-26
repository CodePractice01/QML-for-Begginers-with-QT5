import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        id:myITem
        anchors.centerIn: parent
        color:"orange"
        width: 250
        height: 250

        visible:true


        border.color:"#efefef"
        border.width: 5

        radius: width

        //gradient color
        gradient:Gradient{
            GradientStop{position: 0.0;color:"orange"}
            GradientStop{position: 1.0;color:"blue"}
        }

    }
}
