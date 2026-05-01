import QtQuick
import QtQuick.Controls
import Quickshell

PanelWindow {
    id: root
    height: 500
    width: 400
    focusable: true
    anchors {
        top: true
        bottom: true
        left: true
        right: true
    }
    color: "transparent"
    exclusiveZone: -1
    property bool showMenu: false

    visible: showMenu

    mask: Region { item: menu }

    Rectangle {
        id: menu
        anchors.centerIn: parent
        width: 700
        height: 600
        color: "black"
        opacity: 0.5
        radius: 15

        Item {
            id: search
            y: 20
            x: 20
            TextField {
                id: searchInput
                placeholderText: "Search"
                font.pixelSize: 28
                focus: true
                width: menu.width - (search.x * 2)
                padding: 10

                palette.text: "white"
                palette.placeholderText: "#aaaaaa"
                palette.highlightedText: "black"
                palette.highlight: "#5e81ac"

                background: Rectangle {
                    color: "transparent"
                    border.color: "white"
                    border.width: 3
                    radius: 15
                }
            }
        }
    }
}
