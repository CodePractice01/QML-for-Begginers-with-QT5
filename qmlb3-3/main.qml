import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Aloha Uratica")

    Image{
        id:imgID
        source: "https://p.ecopetit.cat/wpic/lpic/28-289693_38256545-snowboard-wallpaper-west-snowboarding-snowboarding-wallpapers-hd.jpg"
        width:200
        height: 150
        opacity: 0.6
        anchors.centerIn: parent

    }

    TextInput{
        id: myInput
        text:"Aloha"
        anchors.centerIn: parent
    }

    Text{
        id:myTxt
        text: myInput.text
        font.pixelSize: 25
    }
}
