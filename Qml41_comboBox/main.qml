import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

//combocos
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        x: 185
        y: 40
        width: 200
        height: 400

        Label {
            id: lblFood
            text: qsTr("selected Item")
            padding: 10
        }

        ComboBox {
            id: cmbFood
            padding: 0
            model:['Pizza', 'Steak', 'Pasta']

            onCurrentTextChanged: lblFood.text = cmbFood.currentText
        }

        Label {
            id: lblPeople
            text: qsTr("Label")
            padding: 10
        }

    }

    ComboBox {
        id: cmbPeople
        x: 191
        y: 167

        editable: true
        textRole: "text"

        model: ListModel {
            id:listmodel
            ListElement{text: "Bryan" ; age:"45"}
            ListElement{text: "Tammy" ; age:"49"}
            ListElement{text: "Sharon" ; age:"35"}

        }

        onCurrentIndexChanged: lblPeople.text = model.get(currentIndex).text + " >> " + model.get(currentIndex).age

        onAccepted: {
            if(find(editText) === -1)
            {
                model.append({"text":editText, "age":"0"})
                currentIndex = find(editText)
            }
        }
    }
}
