import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Popup{
        id:popup
        anchors.centerIn: parent //windows will be the parent
        width:200
        height: 200
        modal:true
        focus:true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Column{
            spacing:25
            anchors.fill: parent

            Label{
                id: lblButter
                text: "Butter =" +chkButter.checked

            }

            Label{
                id: lblSyrup
                text: "Butter =" +chkSyrup.checked

            }

            Label{
                id: lblFruits
                text: "Butter =" +chkFruits.checked

            }

            Button {
                id:closeButton
                text:"Close"
                //onClicked: popup.visible = false
                onClicked: popup.close()
            }
        }
    }

    Frame {
        id: frame
        width: 200
        height: 410
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter



        Column {
            id: column
            spacing: 25
            padding: 0
            anchors.fill: parent

            CheckBox {
                id: chkButter
                text: qsTr("Butter")
            }

            CheckBox {
                id: chkSyrup
                text: qsTr("Syrup")
            }

            CheckBox {
                id: chkFruits
                text: qsTr("Fruit")
            }
        }

        Button {
            id: button
            x: 0
            y: 187
            text: qsTr("Save")
           // onClicked: popup.visible =true
            onClicked: popup.open()
        }
    }
}
