import QtQuick
import QtQuick.Layouts

ColumnLayout {
    anchors.fill: parent
    spacing: 0

    Text {
      text: Time.hour + Time.minute
        color: "#ffffff"
        Layout.alignment: Qt.AlignHCenter
    }
}

