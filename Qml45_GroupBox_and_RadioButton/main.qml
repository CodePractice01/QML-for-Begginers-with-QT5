import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property string strDrink: ""
    property string strFood: ""

    Popup{
        id:popup
        anchors.centerIn: parent
        width: 250
        height: 200
        modal:true
        focus:true
        closePolicy: popup.CloseOnEscape | popup.CloseOnPressOutside // close on escare OR close when press "CloseOnPressOutside"

        Column{
            anchors.fill: parent
            spacing: 25
            Label{
                id:lblDetails
                text: strFood + " width " + strDrink
            }

            Button{
                id:closeBtn
                text:"Close"
                onClicked: popup.close();
               // onClicked: popup.visible=false
            }

        }
    }

    Row {
        id: row

        width: 432
        height: 324
        spacing: 25
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter


        GroupBox {
            id: groupBox
            width: 200
            height: 200
            anchors.top: parent.top
            anchors.topMargin: 0
            spacing: 50
            title: qsTr("Food")

            Column {
                id: colFood
                padding: 0

                RadioButton {
                    id: rdoFish
                    text: qsTr("Fish")
                }

                RadioButton {
                    id: rdoSteak
                    text: qsTr("Steak")
                }

                RadioButton {
                    id: rdoVegan
                    text: qsTr("Vegan")
                }


            }
        }

        GroupBox {
            id: groupBox1
            width: 200
            height: 200
            title: qsTr("Drinks")
            Column {
                id: colDrinks
                padding: 0
                RadioButton {
                    id: rdoWater
                    text: qsTr("Water")
                }

                RadioButton {
                    id: rdoWine
                    text: qsTr("Wine")
                }

                RadioButton {
                    id: rdoSoda
                    text: qsTr("Soda")
                }
                anchors.fill: parent
            }
            spacing: 25
        }

    }

    Button {
        id: button
        x: 270
        y: 353
        text: qsTr("ClickMe")
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Connections {
        target: button
        onClicked:{

            //get the food
            for(var i =0 ;i< colFood.children.length;i++)
            {
                var rdo = colFood.children[i]
                if(rdo.checked) strFood = rdo.text

            }

            for(var i=0;i<colDrinks.children.length ;i++){
                var rdo = colDrinks.children[i]
                if(rdo.checked) strDrink = rdo.text

            }

            popup.open()

        }
    }
}

/*##^##
Designer {
    D{i:3;anchors_height:400;anchors_width:200;anchors_x:188;anchors_y:"-12"}D{i:8;anchors_height:400;anchors_width:200;anchors_x:188;anchors_y:"-12"}
D{i:6;anchors_height:200;anchors_width:200}
}
##^##*/
