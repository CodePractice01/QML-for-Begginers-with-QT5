import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color:"grey"

    Image{
        id:cat
        source: "qrc:/images/cat.jpeg"
        anchors.fill:parent
        opacity: 0
    }


    SequentialAnimation{
        loops: Animation.Infinite
        running: true

        OpacityAnimator{
            target:cat
            from:0
            to:1
            duration: 2000

        }

        OpacityAnimator{
            target:cat
            from:1
            to:0
            duration: 4000

        }
    }


}
