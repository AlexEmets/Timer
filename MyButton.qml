import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5

Button {
   Layout.alignment: Qt.AlignCenter
   Layout.preferredWidth: 640
   Layout.preferredHeight: 150

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
