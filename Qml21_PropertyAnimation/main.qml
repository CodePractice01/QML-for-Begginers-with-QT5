import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    id:root

    Rectangle{
        id:myshape
        color:"limegreen"
        width: 100
        height: 100
        x:0
        y:(parent.height /2) - (height/2)

        PropertyAnimation{
            id:animationRight
            target: myshape
            property: "x"
            to: root.width - myshape.width
            duration: 800
        }

        PropertyAnimation{
            id:animationLeft
            target: myshape
            property: "x"
            to: 0
            duration: 1000
        }

        MouseArea{
            anchors.fill:parent
            onClicked: {
                if(myshape.x === 0){
                    animationRight.start()
                }else{
                    animationLeft.start()
                }
            }
        }
    }
}
