pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Services.Pipewire

Singleton {
    id: root

    readonly property list<PwNode> nodes: Pipewire.nodes
    readonly property PwNode sink: Pipewire.defaultAudioSink

    PwObjectTracker {
	objects: [ root.nodes ]
    }
}

