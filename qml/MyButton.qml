import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5

Button {

   Layout.alignment: Qt.AlignBottom
   Layout.preferredWidth: 637/3
   Layout.preferredHeight: 100
   Layout.fillWidth: true

    background: Rectangle {
            implicitWidth: 100
            implicitHeight: 40
            opacity: enabled ? 1 : 0.3

   }

}
