import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //javascript ??
    property var middle: height/2
    Image{
        id:localImage
        source: "/images/sometimes-you-gotta-get-through-your-ears-to-see-e-4478914.png"



        height: 250
        fillMode: Image.PreserveAspectFit

        x:300
        y:middle-100
    }


    Image{
        id:remoteImage
        source: "https://pics.me.me/sometimes-you-gotta-get-through-your-ears-to-see-e-4478914.png"



        height: 100
        fillMode: Image.PreserveAspectFit

        x:100
        y:middle

        onProgressChanged: console.log(remoteImage)
        onStatusChanged: if(remoteImage.status == Image.Ready) console.log("Remote image was loaded")
    }

}
