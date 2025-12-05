import QtQuick
import QtQuick.Layouts

ColumnLayout {
    Text {
        text: Time.hour + Time.minute
        color: "#ffffff"
        font.family: "RecMonoCasual"    // or a .ttf loaded via FontLoader
        font.pixelSize: 16          // or font.pointSize
        font.bold: true
        // font.italic: true
    }
}

