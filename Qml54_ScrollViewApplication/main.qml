import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Scroll")


    ///Component encapsulates all the QML Component definition

    //use Component when you want to encapsulate some sort of functionality
    Component{
        id:delegate_Component

        //item is a non visual element
        Item {
            id: item
            width: 200
            height: 50
            Column{
                anchors.fill: parent //here the parent will pe the ListElement
                spacing: 5

                Label{
                    text: name
                    font.bold: true
                }

                Label{
                    text: number
                }

            }
        }

    }

    //make ListModel
    ListModel{
        id:myModel

        //foreach list Element---create a deletate --> and display
        ListElement{
            name: "Bond 007"
            number:"555 007 "

        }

        ListElement{
            name: "Bond 007"
            number:"555 007 "

        }

        ListElement{
            name: "Bond 007"
            number:"555 007 "

        }

        ListElement{
            name: "Bond 007"
            number:"555 007 "

        }

        ListElement{
            name: "Bond 007"
            number:"555 007 "

        }

        ListElement{
            name: "Bond 007"
            number:"555 007 "

        }

        ListElement{
            name: "Bond 007"
            number:"555 007 "

        }

        ListElement{
            name: "Bond 007"
            number:"555 007 "

        }

        ListElement{
            name: "Bond 007"
            number:"555 007 "

        }

        ListElement{
            name: "Bond 007"
            number:"555 007 "

        }
    }

    ScrollView {
        anchors.fill: parent

        ListView {
            width: parent.width
            model: myModel
            delegate: delegate_Component
        }
    }
}
