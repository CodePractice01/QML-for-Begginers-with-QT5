import QtQuick 2.12
import QtQuick.Window 2.12


//id must be PointingDeviceUniqueId
//root object-there can be only Component


//top level object is the root !
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id:root

    Image{
        id:myimage
        source:"https://i1.pngguru.com/preview/834/394/537/energy-lightning-power-electric-electricity-logo-the-flash-logo-png-clipart.jpg"
        height: 100
        width: 150
        anchors.centerIn: parent

        Rectangle {
            color:"green"
            width: parent.width
            height: parent.height
            opacity: 0.5 //50%    0.0%-1.0%
        }
    }
}
