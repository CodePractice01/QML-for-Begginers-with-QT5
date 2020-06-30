import QtQuick 2.0

Item {
    id: element
    property color offColor: "teal"
    property color onColor: "orange"
    property color defaultColor: "lightblue"

     Rectangle {
         id: rectangle
         color: defaultColor
         anchors.fill: parent
         radius: width
     }
     states: [
         State {
             name: "onState"

             PropertyChanges {
                 target: rectangle
                 color: onColor
             }
         },
         State {
             name: "offState1"

             PropertyChanges {
                 target: rectangle
                 color: offColor
             }
         }
     ]


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_height:200;anchors_width:200;anchors_x:210;anchors_y:149}
}
##^##*/
