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

    RowLayout {
        MyButton {
            id: control1
            text: "Start"
            onClicked: {
                console.log("start clicked!")
            }

        }
    }
}
