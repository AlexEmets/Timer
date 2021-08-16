import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Timer")
    RowLayout {
        Button {
            id: control1
            text: "Start"
            onClicked: model.submit()
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
                    border.width: 1
                    radius: 2
                }
        }
        Button {
            id: control2
            text: qsTr("Stop")

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
            text: qsTr("Reset")

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
