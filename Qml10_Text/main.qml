import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text{
        id:myText
        text:qsTr("<html> <b> Hello </b> <i>< font color='green'>Abrdaa</font></i></html><br>
<font color='#C0C0C0'>Mushu</font> <br>
<a href='http://wwww.google.com'>my link google</a>")

        anchors.centerIn: parent
        font.pointSize: 35
        font.bold: true //might not work
        font.italic: false //might not work
        color:"orange"
        linkColor:"violet"

        onLinkHovered: {

            console.log("Hover: " + link)
            if(link){
                myText.font.bold = true;
            }
            else{
                myText.font.bold= false;
            }

        }
        onLinkActivated: Qt.openUrlExternally(link)
    }
}
