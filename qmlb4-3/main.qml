import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //javascript
    property var middle: height /2

    Image {
        id: localImage
        source: "images/snowboarding"

        height:300
        fillMode: Image.PreserveAspectFit

        x:300
        y:middle - 100

    }

    Image {
        id: remoteImage
        source: "images/snowboarding"

        height:300
        fillMode: Image.PreserveAspectFit

        x:100
        y:middle

    }

}
