import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row{
        anchors.centerIn: parent
        spacing: 20

        Rectangle{
            //display nice and smooth
            width: 200
            height: 200
            border.color:"grey"
            border.width: 20
            radius: width

            Text{
                anchors.centerIn: parent
                text:qsTr("Turned On");
            }
        }

        Rectangle{
            width: 200
            height: 200
            border.color:"grey"
            border.width: 20
            radius: width
            antialiasing: false //pixelate

            Text{
                anchors.centerIn: parent
                text:qsTr("Turned Off");
            }
        }
    }
}
