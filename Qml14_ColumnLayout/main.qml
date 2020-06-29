import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")



    Column{

        anchors.centerIn: parent
        spacing: 2 //2px
        MyShape{
            color: "orange"
        }
        MyShape{
            color: "lightblue"
        }
        MyShape{
            color: "lightpink"
        }
    }
}
