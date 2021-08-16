
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5

ApplicationWindow {
    id:win
    width: 640
    height: 480
    visible: true
    title: qsTr("Timer")

    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 1; color: "#f0f" }
            GradientStop { position: 0; color: "#6699ff" }
        }
    }
    menuBar: MenuBar {

           Menu {

               title: qsTr("&View")
                Action { text: qsTr("&Dark mode") }
           }
           Menu {

               title: qsTr("&Edit")

           }
           Menu {

               title: qsTr("&Help")
               Action { text: qsTr("&About") }

           }
       }
    RowLayout{
        spacing: 2
        anchors.fill: parent
        MyButton {
            id: control
            Layout.fillWidth: true
            background: Rectangle {
                radius: 20
                color:  "#A7FF9D"
                border.color: "black"
                border.width: 5

            }
            onClicked: {
                console.log("start clicked!")
            }

            contentItem: Text {
                color: "green"
                text: "START"
                font.pointSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        MyButton {
            Layout.fillWidth: true
            background: Rectangle {
                border.color: "black"
                border.width: 5
                color: "#FF7666"
                radius: 20
            }


            onClicked: {
                console.log("start clicked!")
            }
            contentItem: Text {
                color: "red"
                text: "STOP"
                font.pointSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        MyButton {

            background: Rectangle {
                color: "#9286A5"
                border.color: "black"
                border.width: 5
                radius: 20
            }
            onClicked: {
                console.log("start clicked!")
            }
            contentItem: Text {
                color: "blue"
                text: "RESET"
                font.pointSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
}
