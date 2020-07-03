import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Page 3")


    /* Label {
        color: "#e33c29"
        text: qsTr("You are on my custom page 3 -- click right->add new ->qt->QtQuick UI File.")
        font.family: "Verdana"
        font.italic: false
        font.bold: true
        font.pointSize: 20
        anchors.centerIn: parent
    }*/
    Label {
        text: "custom page 3 ->add new ->qt->QtQuick UI File."
    }
    Grid {
        id: grid
        width: 401
        height: 189
        anchors.centerIn: parent
        spacing: 10
        columns: 2

        Label {
            text: "First name"
        }

        TextField {
            id: txtFirstName
            text: ""
            placeholderText: "First name"
        }
        Label {
            text: "LAst name"
        }

        TextField {
            id: txtLastName
            text: ""
            placeholderText: "LAst Name"
        }

        Button {
            id: button
            text: qsTr("Button")
        }
    }
}
