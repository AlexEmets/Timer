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
    color: "#f0f"




    RowLayout {
        Button {
            id: control1
            Layout.preferredWidth: 640
            Layout.preferredHeight: 150
            x:100
            y:100
            text: "Start"
            //anchors.centerIn: parent
            onClicked: {
                console.log("start clicked!")
            }

            contentItem: Text {
                text: control1.text
                font: control1.font
                opacity: enabled ? 1.0 : 0.3
                color: control1.down ? "#17a81a" : "#21be2b"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
            background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: control1.down ? "#17a81a" : "#21be2b"
                    border.width: 5
                    radius: 100

                }
        }
        Button {
            id: control2
            text: qsTr("Stop")
            //anchors.centerIn: control1
            contentItem: Text {
                text: control2.text
                font: control2.font
                opacity: enabled ? 1.0 : 0.3
                color: control2.down ? "#ff0000" : "#ff0000"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 40
                opacity: enabled ? 1 : 0.3
                border.color: control2.down ? "#ff0000" : "#ff0000"
                border.width: 1
                radius: 2
            }
        }
        Button {
            id: control3
            //anchors.centerIn: parent
            text: qsTr("Reset")
            Layout.preferredWidth: 200
            Layout.preferredHeight: 200
            contentItem: Text {
                text: control3.text
                font: control3.font
                opacity: enabled ? 1.0 : 0.3
                color: control3.down ? "#000000" : "#000000"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 40
                opacity: enabled ? 1 : 0.3
                border.color: control3.down ? "#000000" : "#000000"
                border.width: 1
                radius: 2
            }
        }
    }
}
