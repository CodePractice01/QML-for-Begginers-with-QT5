import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: image
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        source: "bg.jpg"
    }
}

/*##^##
Designer {
    D{i:1;anchors_x:244;anchors_y:126}
}
##^##*/
