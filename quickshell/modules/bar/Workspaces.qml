import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland

ColumnLayout {
    // Build the workspace list
    property var activeWorkspaces: {
        const ids = Hyprland.workspaces.values.map(w => w.id);
        const maxId = Math.max(...ids, 3);

        let result = [1, 2, 3];

        // Add only active workspaces above 3
        for (let i = 4; i <= maxId; i++) {
            if (ids.includes(i)) result.push(i);
        }

        return result;
    }

	// Render min 3 + active workspaces
    Repeater {
        model: activeWorkspaces

        Item {
            height: 20

            property int wsId: modelData
            property bool isActive: Hyprland.focusedWorkspace?.id === wsId

            MouseArea {
                anchors.fill: parent
                onClicked: Hyprland.dispatch("workspace " + wsId)
            }

            Text {
                text: ""
                color: isActive ? "#ffffff" : "#555555"
                font { pixelSize: 14; bold: true }
            }
        }
    }

}

