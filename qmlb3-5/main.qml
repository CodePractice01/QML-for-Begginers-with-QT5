import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: name
        source: "https://p.ecopetit.cat/wpic/lpic/218-2183498_snowboard-wallpaper-hd-black-white.jpg"
        width: 200
        height: 150
        x:100
        y:100
        z:10

        //child of image
        //even if the z value is less that z of image
        //this is not avaible because the image is the 'desk'/like a table and the child element is like an object placed on that table
        Rectangle{
            color:"red"
            x:-25
            y:-25
            width:50
            height: 50
            opacity: 0.5
            z:3
        }

        Rectangle{
            color:"blue"
            x:parent.width - width
            y:parent.height-height
            width:50
            height: 50
            opacity: 0.5
            z:2
        }

    }
}
