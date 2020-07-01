import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row {
        id: row
        width: 200
        height: 400


        Column {
            id: column
            width: 200
            height: 400
            spacing: 10

            CheckBox {
                id: checkBox
                text: qsTr("Normal")
            }

            CheckBox {
                id: checkBox1
                text: qsTr("Not chekable")
                checkable: false
            }

            CheckBox {
                id: checkBox2
                text: qsTr("Tristate")
                tristate: true
            }

            CheckBox {
                id: checkBox3
                text: qsTr("Exclusive")
            }

            CheckBox {
                id: checkBox4
                text: qsTr("Repeat")
            }

            Button {
                id: button
                text: qsTr("Reset")

                Connections {
                    target: button
                    onClicked: {
                    checkBox.checkState = Qt.Unchecked
                    checkBox1.checkState = Qt.Unchecked
                    checkBox2.checkState = Qt.Unchecked
                    checkBox3.checkState = Qt.Unchecked
                    checkBox4.checkState = Qt.Unchecked

                    }
                }
            }


        }

        Column {
            id: column1
            x: 150
            width: 430
            height: parent.height

            Label {
                id: label
                color: "#6c026c"
                text: qsTr("status here")
                styleColor: "#4a078d"
                font.pointSize: 40
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }


    }


    Connections{
        target:checkBox
        onClicked:label.text = "checkbox = " + target.checkState
    }
    Connections{
        target:checkBox1
        onClicked:label.text = "checkbox = " + target.checkState
    }
    Connections{
        target:checkBox2
        onClicked:label.text = "checkbox = " + target.checkState
    }
    Connections{
        target:checkBox3
        onClicked:label.text = "checkbox = " + target.checkState
    }
    Connections{
        target:checkBox4
        onClicked:label.text = "checkbox = " + target.checkState
    }
}
