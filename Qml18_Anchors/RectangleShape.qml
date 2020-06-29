import QtQuick 2.0


Item{
    id:root
    property color color: "gray"
    property  string  text: "title"
    width: 100
    height: 100

    Rectangle {
        color:root.color
        anchors.fill:parent

        Text {

            text: root.text
            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent
            drag.target: root.parent
            onClicked: root.z++ //on clicked take the parent and increment the z position
        }

    }


}

//Rectangle {
//    id:myShape
//    color:"gray"
//    width: 30
//    height: 30

//    property string text: ""
//    Text {
//        id: name
//        text: parent.text
//    }

//    MouseArea{
//        anchors.fill: parent
//        drag.target: parent
//        onClicked: parent.z++ //on clicked take the parent and increment the z position


//    }

//}
