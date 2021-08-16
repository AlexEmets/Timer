
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

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

    ColumnLayout{
        spacing: 2

        MyButton {
            Layout.alignment: Qt.AlignCenter
            background: Rectangle {
                radius: 20
                color: "green"
                border.color: "black"
                border.width: 5
            }
            onClicked: {
                console.log("start clicked!")
            }
            text: "start"
        }

        MyButton {
            Layout.alignment:  Qt.AlignCenter
            background: Rectangle {
                border.color: "black"
                border.width: 5
                color: "red"
                radius: 20
            }


            onClicked: {
                console.log("start clicked!")
            }
            text: "stop"
        }

        MyButton {
            Layout.alignment:  Qt.AlignCenter
            Layout.fillHeight: true
            background: Rectangle {
                border.color: "black"
                border.width: 5
                color: "black"
                radius: 20
            }

            text: "reset"
            onClicked: {
                console.log("start clicked!")
            }
        }
    }
}
