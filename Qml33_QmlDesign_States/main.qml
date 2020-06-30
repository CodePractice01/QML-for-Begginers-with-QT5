import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MyBox {
        id: myBox
        x: 262
        y: 107
        width: 200
        height: 200

        MouseArea {
            id: mouseArea
            anchors.fill: parent

            onClicked: {
                if(parent.state === "onState")
                {
                    parent.state="offState1"
                }
                else{
                    parent.state="onState"

                }
            }

            /*Connections {
                target: mouseArea
                onClicked: {
                    if(parent.state === "onState")
                    {
                        parent.state="offState1"
                    }
                    else{
                        parent.state="onState"

                    }
                }

            }*/
        }
    }
}
