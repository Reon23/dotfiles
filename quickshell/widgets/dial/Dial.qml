import QtQuick
import QtQuick.Layouts

Item {
    id: dial
    width: 35
    height: 35


    property string icon
    property int value: 0      // 0–100
    property int fontSize: 0
    // property color trackColor: "#444"
    property color trackColor: "transparent"
    // property color fillColor: "#00aaff"
    property color fillColor: "white"
    Canvas {
        id: canvas
        anchors.fill: parent
        onPaint: {
            const ctx = canvas.getContext("2d")
            ctx.reset()

            const cx = width / 2
            const cy = height / 2
            const r  = width / 2 - 4
            const start = -Math.PI / 2                     // start at top
            const end   = start + (Math.PI * 2) * (value / 100)

            // --- background ring ---
            ctx.beginPath()
            ctx.strokeStyle = trackColor
            ctx.lineWidth = 3
            ctx.arc(cx, cy, r, 0, Math.PI * 2)
            ctx.stroke()

            // --- filled part ---
            ctx.beginPath()
            ctx.strokeStyle = fillColor
            ctx.lineWidth = 3
            ctx.arc(cx, cy, r, start, end)
            ctx.stroke()
        }

        onWidthChanged: requestPaint()
        onHeightChanged: requestPaint()
        Connections {
            target: dial
            onValueChanged: canvas.requestPaint()
            onFillColorChanged: canvas.requestPaint()
        }
    }

    Rectangle {
        width: 25
        height: 25
        radius: width/2
        // color: "black"
        color: "transparent"
        anchors.centerIn: parent
    }

    Text {
        id: valueLabel
        text: (dial.icon.length == 0) ? dial.value : dial.icon
        anchors.centerIn: parent
        font.pixelSize: (dial.fontSize) ? dial.fontSize : 18
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}

