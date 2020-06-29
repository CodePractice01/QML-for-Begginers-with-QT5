import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Grid{
        anchors.centerIn: parent
        spacing: 2
       //initial position
        //rows: -1
        //columns: -1
        rows:3
        columns: 3

        MyShape{
            color:"orange"
        }
        MyShape{
            color:"lightblue"
        }
        MyShape{
            color:"lightpink"
        }
        MyShape{
            color:"blue"
        }
        MyShape{
            color:"red"
        }
        MyShape{
            color:"green"
        }
        MyShape{
            color:"teal"
        }
        MyShape{
            color:"black"
        }
    }

}
