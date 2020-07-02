import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        anchors.fill: parent

        Image {
            id: image
            width: 350
            height: 350
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: "qrc:/image/sometimes-you-gotta-get-through-your-ears-to-see-e-4478914.pn"
        }

        Switch {
            id: element
            text: qsTr("bg1")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 25

            onToggled: {
                if(checked){
                    text="Somethimes[..]"
                    image.source="qrc:/image/sometimes-you-gotta-get-through-your-ears-to-see-e-4478914.png"
                }
                else{
                    text = "Image"
                    image.source="qrc:/image/bg.jpg"

                }
            }

        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:400;anchors_width:200}
}
##^##*/
