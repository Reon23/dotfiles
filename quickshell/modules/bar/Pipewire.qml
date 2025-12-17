import QtQuick
import Quickshell
import Quickshell.Services.Pipewire
import qs.widgets.dial

Item {
    id: root
    width: 35
    height: 30

    readonly property PwNode sink: Pipewire.defaultAudioSink
	readonly property int volume: sink.audio.volume * 100
	property string icon: "󰕾 "

	function volumeIcon() {
		if(sink.audio.muted || volume == 0) return "󰸈 "
		if(volume <= 20) return "󰕿 "
		if(volume <= 60) return "󰖀"
		return "󰕾 "

	}

    PwObjectTracker {
        objects: [ root.sink ]
    }

    Dial {
        value: root.sink && root.sink.audio
               ? root.volume
               : 0
		icon: root.volumeIcon()
    }
}

