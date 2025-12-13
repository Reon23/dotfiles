import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.services.resources
import qs.widgets.dial

ColumnLayout {
	Dial { 
		Layout.alignment: Qt.AlignHCenter
		value: Cpu.cpuUsage
		icon: "󱐋"
	}
	Dial { 
		Layout.alignment: Qt.AlignHCenter
		value: Memory.memUsage
		icon: "󰍛 "
	}
	Dial { 
		Layout.alignment: Qt.AlignHCenter
		value: Disk.diskUsage
		Layout.bottomMargin: 10
		icon: "󰋊"
	}
}
