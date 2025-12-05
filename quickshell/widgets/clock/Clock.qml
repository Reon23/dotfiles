import QtQuick
import QtQuick.Layouts

ColumnLayout {
    anchors.fill: parent
    spacing: 0

    Item { Layout.fillHeight: true }

    Text {
        text: Time.hour + Time.minute
        color: "#ffffff"
        Layout.alignment: Qt.AlignHCenter

        font.family: "RecMonoCasual"    // or a .ttf loaded via FontLoader
        font.pixelSize: 16          // or font.pointSize
        font.bold: true
        // font.italic: true
    }
}

