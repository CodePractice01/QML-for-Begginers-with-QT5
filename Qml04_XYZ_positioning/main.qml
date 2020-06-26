import QtQuick 2.12
import QtQuick.Window 2.12


// x Y Z

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id:image
        source: "https://pics.me.me/sometimes-you-gotta-get-through-your-ears-to-see-e-4478914.png"
        width: 250
        height: 250
        x:100 // distance left: 100px
        y:20 //distance right: 10px

        z:4 //like z-index in html/css

    }

    Rectangle{
        color:"red"
        width: 350
        height: 350
        x:100
        y:20
        opacity: 0.5
        z:2
    }

    Rectangle{
        color:"blue"
        width: 250
        height: 250
        x:150
        y:150
        z:1
        opacity: 0.5
    }

}
