import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland

ColumnLayout {
	anchors.fill: parent
	anchors.margins: 15

	Repeater {
		model: Math.max(3, Hyprland.workspaces.values.length)
		Item {
			width: parent.width
			height: 20
			property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
			property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)

			MouseArea {
				anchors.fill: parent
				onClicked: Hyprland.dispatch("workspace " + (index + 1))
			}

			Text {
				text: "" 
				color: isActive ? "#ffffff" : "#555555"
				font { pixelSize: 14; bold: true }

			}
		}
	}
	Item {Layout.fillHeight: true}
}
