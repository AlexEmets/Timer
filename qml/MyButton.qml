import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5

Button {
   Layout.alignment: Qt.AlignCenter
   Layout.preferredWidth: 640
   Layout.preferredHeight: 480/3

    background: Rectangle {
            implicitWidth: 100
            implicitHeight: 40
            opacity: enabled ? 1 : 0.3

        }

}
