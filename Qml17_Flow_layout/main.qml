import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Rectangle{
        color:"orange"
        anchors.centerIn: parent
        width: 300
        height: 400

        clip:true

        Flow{
            anchors.centerIn: parent

            //flow.leftToRight(default) -- items are positioned next to each other according to the layourt
            //flow.TopToBottom - items are positioned next to each other from top to bottom until the height

            flow: Flow.LeftToRight
            spacing: 5

            ShaormaShape{
                color:"lightblue"
            }
            ShaormaShape{
                color:"lightpink"
            }

            ShaormaShape{
                color:"teal"
            }

            ShaormaShape{
                color:"grey"
            }
            ShaormaShape{
                color:"pink"
            }

            ShaormaShape{
                color:"yellow"
            }

        }
    }





}
