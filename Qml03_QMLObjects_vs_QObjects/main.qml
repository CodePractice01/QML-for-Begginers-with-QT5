import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Image{
        id:myimage
        source:"https://i1.pngguru.com/preview/834/394/537/energy-lightning-power-electric-electricity-logo-the-flash-logo-png-clipart.jpg"

        width: 150
        height: 100
        opacity: 0.25
        anchors.centerIn: parent
    }

    TextInput{
        id:myinput
        text: "Sometimes you gotta get through your fear to see the beauty on the other side"
        anchors.centerIn: parent
        font.pixelSize: 20
    }

    Text{
        id:myText
        text:myinput.text
        font.pixelSize: 25
    }
}
