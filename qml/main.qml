
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5
import MyOwnTimer 1.0

ApplicationWindow {
    id:win
    width: 840
    height: 500
    visible: true
    title: qsTr("Timer")

    Timer {
        id: timer
    }

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
// upper heading with "Timer face text"
    Rectangle {
        Layout.alignment: Qt.AlignCenter

        x:170
        y:5

        width: 500
        height: 37
        color: "white"
        border.color: "#783C4E"
        border.width: 1
        radius: 50
        Text {
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill:parent
            font.family: "Helvetica"
            font.pointSize: 23
            text:  qsTr("Timer face")
        }
    }

// Rectangular timer face
//    Rectangle {

//       // anchors.fill: parent
//       // Layout.fillWidth: true
//        id: time
//        Layout.alignment: Qt.AlignCenter
//        x: 21
//        y: 50
//        width: 800
//        height: 300
//        color: "white"
//        border.color: "#783C4E"
//        border.width: 4
//        radius: 50
//        Text {
//            color: "#783C4E"
//            horizontalAlignment: Text.AlignHCenter
//            verticalAlignment: Text.AlignVCenter
//            anchors.fill:parent
//            id: myText
//            font.family: "Helvetica"
//            font.pointSize: 100
//            text:  qsTr("12:58")
//        }
//    }

// Circular timer face
    Rectangle {
         width: 300
         height: 300
         color: "#B8EAD0"
         border.color: "black"
         border.width: 1
         radius: width*0.5
         x: 275
         y: 50
         Text {
             color: "#783C4E"
             horizontalAlignment: Text.AlignHCenter
             verticalAlignment: Text.AlignVCenter
             anchors.fill:parent
             font.family: "Helvetica"
             font.pointSize: 80
             text:  qsTr("12:58")
         }
    }
//Layout with 3 buttons(start, stop and reset)
    RowLayout{
        spacing: 2
        anchors.fill: parent

        //Start button
        MyButton {
            id: startButton
            Layout.fillWidth: true
            background: Rectangle {
                radius: 20
                color:  "#A7FF9D"
                border.color: "black"
                border.width: 5

            }
            onClicked: {
                console.log("start clicked!")
                timer.start
            }

            contentItem: Text {
                color: "green"
                text: "START"
                font.pointSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        //Stop button
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
        // Reset button
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
