import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Page 1")

    Label {
        color: "#033c73"
        text: qsTr("You are on Page 1.")
        font.bold: true
        styleColor: "#144bbc"
        font.pointSize: 15
        anchors.centerIn: parent
    }
}
