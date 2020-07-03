import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Page 2")

    Label {
        color: "#e33c29"
        text: qsTr("You are on Page 2.")
        font.family: "Verdana"
        font.italic: false
        font.bold: true
        font.pointSize: 20
        anchors.centerIn: parent
    }
}
