import QtQuick 2.0

Rectangle {

    color:"gray"
    width: 100
    height: 100

    MouseArea{
        anchors.fill: parent
        drag.target: parent
        onClicked: parent.z++ //on clicked take the parent and increment the z position

    }

}
