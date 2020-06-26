import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //create item
    //create own compunents- custom object
    Item{
        id:myItem
        anchors.centerIn: parent
        width: 150
        height: 150

        //we have the width and height of parent: Item {
       //add only the color and the anchors.fill

        Rectangle{
            color:"orange"
            anchors.fill:parent
        }
    }
}
