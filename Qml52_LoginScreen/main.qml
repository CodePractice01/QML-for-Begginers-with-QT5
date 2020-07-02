import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    property alias column: column
    title: qsTr("Hello World")

    property string username: "erm"
    property string password: "000"
    property string status : "Failed"

    Popup{
        id:statusPopup
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        anchors.centerIn: parent
        width:200
        height: 300
        modal:true
        focus:true

        Label{
            id:statusLabel
            anchors.centerIn: parent
            text:status
            font.bold: true
        }

    }

    Column {
        id: column
        width: 200
        height: 400
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter


        Grid {
            id: grid
            width: 300
            height: 100
            columns: 2
            spacing: 10

            Label {
                id: label
                text: qsTr("Username")
            }

            TextField {
                id: txtUsername
                placeholderText: qsTr("Text Field")
            }

            Label {
                id: label1
                text: qsTr("Password")
            }

            TextField {
                id: txtPassword
                placeholderText: ""

                echoMode: TextInput.Password
            }

        }

        Button {
            id: button
            text: qsTr("Login")

            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                           if(username === txtUsername.text && password === txtPassword.text) status = "Hello  " + txtUsername.text

                           else{
                               status = "wrong pass"
                           }
                            statusPopup.open()
            }
        }


    }
}
