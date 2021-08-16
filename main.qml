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
                title: qsTr("&Settings")
                Action { text: qsTr("&New...") }
                Action { text: qsTr("&Open...") }
                Action { text: qsTr("&Save") }
                Action { text: qsTr("Save &As...") }
                MenuSeparator { }
                Action { text: qsTr("&Quit") }
            }
            Menu {
                title: qsTr("&View")
                Action { text: qsTr("Cu&t") }
                Action { text: qsTr("&Copy") }
                Action { text: qsTr("&Paste") }
            }
            Menu {
                title: qsTr("&Help")
                Action { text: qsTr("&About") }
            }
        }
    RowLayout {
        MyButton {
            id: control1
            text: "Start"
            onClicked: {
                console.log("ls")
            }

        }


    }
}
