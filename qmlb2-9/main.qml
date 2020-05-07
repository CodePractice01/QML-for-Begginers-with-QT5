import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello You")

    Text {
        id: element //unique for wich element
        text: qsTr("EnjoyIT")
        anchors.centerIn:parent
        font.bold: true
        font.pixelSize: 25
    }

    Image {
        id: myImg
        source: "https://www.ecopetit.cat/wpic/mpic/28-284534_beautiful-snowboarding-wallpaper-snowboard-wallpaper-hd.jpg"
        anchors.centerIn: parent
    }
}
