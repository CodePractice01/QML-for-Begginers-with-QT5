import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id:root

//limegreen
    property color bgColor: "#5A6263"
    property color buttonColor: "lightblue"
    property color hoverColor: "lightpink"
    property color clickColor: "teal"
    property var size:100


    Rectangle{
        id:background
        color: root.buttonColor
        width: 100
        height: parent.height

        Column{
            id:column
            anchors.fill:parent

            HoverButton{
                width: 100
                height: 50
                color:root.buttonColor
                title.text: "Cat"
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed: image.source = "qrc:/images/cat.jpeg"
            }

            HoverButton{
                width: 100
                height: 50
                color:root.buttonColor
                title.text: "dog"
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed: image.source = "qrc:/images/dog.jpg"
            }

            HoverButton{
                width: 100
                height: 50
                color:root.buttonColor
                title.text: "Fish"
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed: image.source = "qrc:/images/fish.jpeg"
            }
        }
    }

    Rectangle{
        id:rectangle
        color: root.bgColor
        x: 100
        y: 0
        width: parent.width - x
        height: parent.height
        Image{
            id:image
            anchors.margins: 25
            anchors.fill:parent
            fillMode: Image.PreserveAspectFit
            source:"qrc:/images/fish.jpeg"
        }

    }

}
