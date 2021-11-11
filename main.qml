import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Funny Port")

    Rectangle{
        id: root
        anchors.fill: parent
        Rectangle{
            id:leftPanel
            color:"#BBBBBB"
            height: parent.height
            width:parent.width * 0.3
            anchors.left: parent.left

            ListView{
                id: portsList
                anchors.fill: parent
            }
        }

        Rectangle{
            id: rightPanel
            color:"#EEEEEE"
            anchors.left: leftPanel.right
            height: parent.height
            width:parent.width * 0.7

            Rectangle{
            }

            Rectangle{
            }
        }
    }
}
