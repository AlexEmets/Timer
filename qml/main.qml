import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5
import QtQuick.Dialogs 1.3
//import MyOwnTimer 1.0

ApplicationWindow {
    id:timer
    width: 840
    height: 500
    visible: true
    title: qsTr("Timer")

//    Timer {
//        id: timer
//    }

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
             font.pointSize: 50
             text:  timerclass.time
         }
    }
//Layout with 4 buttons(start, stop, reset and set time)
    RowLayout{
        spacing: 2
        anchors.fill: parent

        //Start button
        MyButton {
            id: startStopButton
            Layout.fillWidth: true
            background: Rectangle {
                radius: 20
                color:  timerclass.isActive ? "#FF7666" : "#A7FF9D"
                border.color: "black"
                border.width: 5

            }
            onClicked: {
                console.log("start/stop clicked!")
                timerclass.isActive ? timerclass.pause() : timerclass.start()
            }

            contentItem: Text {
                color: "green"
                text: timerclass.isActive ? "STOP" :"START"
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
                console.log("reset clicked!")
                timerclass.reset()
                setInitialTime.open()
            }
            contentItem: Text {
                color: "blue"
                text: timerclass.isTimeSet ? "RESET" : "SET TIME"
                font.pointSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

         /*MyButton {

            background: Rectangle {
                color: "darkgrey"
                border.color: "black"
                border.width: 5
                radius: 20
            }
            onClicked: {
                console.log("set time clicked!")
                setInitialTime.open()
            }
            contentItem: Text {
                color: "blue"
                text: "SET TIME"
                font.pointSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
*/
        MyButton {

            background: Rectangle {
                color: "darkgrey"
                border.color: "black"
                border.width: 5
                radius: 20
            }
            onClicked: {
                console.log("tap clicked!")
                timerclass.tap()
                timestampsPopup.close()
                timestampsPopup.open()

//                var component = Qt.createComponent("Child.qml")
//                var window    = component.createObject(root)
//                 window.show()
            }
            contentItem: Text {
                color: "purple"
                text: "TAP"
                font.pointSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    Dialog{
        id: setInitialTime

        title: qsTr("Input initial time")
        standardButtons: Dialog.Ok | Dialog.Cancel
        height: 150
        width: 100

        TextField{
            id: initialTime
            width: parent.width
            placeholderText: "hh:mm:ss"
        }
        onAccepted: {
            console.log("set " + initialTime.text + " time");
            timerclass.time = initialTime.text;
            console.log(timerclass.time);
        }
    }

     Popup {
        id: timestampsPopup
        height: 100
        width: 150
        background: Rectangle {

            color: "#E5AFBC"
            border.color: "purple"
            radius:15
        }
        visible: false
        y: Math.round((parent.height - height) / 2)
        contentItem: Text {

            ListView {

                width: timestampsPopup.height
                height: timestampsPopup.width

                model: timerclass.setTimestampModel

                ScrollBar.vertical: ScrollBar {
                    policy: ScrollBar.AlwaysOn
                }
                delegate: ItemDelegate {
                    Text {
                        text: modelData
                    }
                }
            }
        }
//        ListView {
//            width: timestampsPopup.height
//            height: timestampsPopup.width
//            model: timerclass.setTimestampModel

//            delegate: ItemDelegate {
//                //color: "#9EA67D"
//                Text {
//                    horizontalAlignment: Text.AlignHCenter
//                    anchors.fill:parent
//                    text: modelData
//                }
//            }
//        }
    }

//        Rectangle{
//            id:timestampsRectangle
//            width: 200
//            height: 200
//            x:600
//            y:120
//            color: "#E5AFBC"
//            Layout.fillWidth: true
//            radius: 15
//            clip: true
//            Text{
//                id:timestampsHeader
//                text:"Timestamps"
//                color: "black"
//                horizontalAlignment: Text.AlignHCenter
//                //verticalAlignment: Text.AlignVCenter
//                anchors.fill:parent
//            }

//            ListView {
//                width: 200
//                height: 200
//                model: timerclass.setTimestampModel

//                delegate: ItemDelegate {
//                    //color: "#9EA67D"
//                    Text {
//                        horizontalAlignment: Text.AlignHCenter
//                        anchors.fill:parent
//                        text: modelData
//                    }
//                }
//            }

//    }




}


