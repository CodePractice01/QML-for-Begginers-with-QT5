import QtQuick 2.12
import QtQuick.Window 2.12

//parent and children relationships

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image{
        id:image
        source: "https://pics.me.me/sometimes-you-gotta-get-through-your-ears-to-see-e-4478914.png"
        width: 350
        height: 350
        x:100
        y:100
        z:3


        //make a child of that oject --image
        //asociate wth position absolute in css
        //image: position:static

        Rectangle{
            color:"red"
            x:-25
            y:-25
            width: 50
            height: 50
            opacity: 0.4
            z:0
        }


        Rectangle{
            color:"blue"
            x:parent.width-width
            y:parent.height-height
            width: 50
            height: 50
            opacity: 0.4
            z:4
        }

    }


}
