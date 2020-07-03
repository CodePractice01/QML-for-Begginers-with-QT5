import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")
    id:windowRoot

    property string name: ""



    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        //Editor
        Page1Form {
            id:page1
            Component.onCompleted: {
                //set the property
                name = windowRoot.name
            }
        }

        //Display
        Page2Form {
            id:page2

        }

        onCurrentIndexChanged:{
            console.log(currentIndex)

            //page 1

            if(currentIndex === 0){
                windowRoot.name = page2.name
                page1.name =windowRoot.name
            }

            //page2
            if(currentIndex === 1){
                windowRoot.name = page1.name
                page2.name =windowRoot.name
            }



        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
    }
}
