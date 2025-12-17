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

        for (let i = 4; i <= maxId; i++) {
            if (ids.includes(i)) result.push(i);
        }

        return result;
    }

    Repeater {
        model: activeWorkspaces

        Item {
            height: 20
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter

            property int wsId: modelData
            property bool isActive: Hyprland.focusedWorkspace?.id === wsId

            MouseArea {
                anchors.fill: parent
                onClicked: Hyprland.dispatch("workspace " + wsId)
            }

            Text {
                anchors.centerIn: parent
                text: ""
                color: isActive ? "#ffffff" : "#666666"
                scale: isActive ? 1.0 : 0.5
                font { pixelSize: 14; bold: true }
                Behavior on scale {
                    NumberAnimation {
                        duration: 180
                        easing.type: Easing.OutQuad
                    }
                }
            }
        }
    }
}

