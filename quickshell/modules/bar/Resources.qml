import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.services.resources
import qs.widgets.dial

ColumnLayout {
	id: root
	property bool isMinimized: true


	MouseArea {
		anchors.fill: parent
		onClicked: root.isMinimized = !root.isMinimized
	}

	Dial { 
		Layout.alignment: Qt.AlignHCenter
		value: Cpu.cpuUsage
		icon: "󱐋"
	}

	Dial { 
		Layout.alignment: Qt.AlignHCenter
		visible: !root.isMinimized
		value: Memory.memUsage
		icon: "󰍛 "

		opacity: visible ? 1 : 0
		scale: visible ? 1.0 : 0.0
		Behavior on scale {
			NumberAnimation {
				duration: 180
				easing.type: Easing.InOutCubic
			}
		}

		Behavior on opacity {
			NumberAnimation { duration: 120
			easing.type: Easing.InOutCubic
		}
	}
}
Dial { 
	Layout.alignment: Qt.AlignHCenter
	visible: !root.isMinimized
	value: Disk.diskUsage
	Layout.bottomMargin: 10
	icon: "󰋊"

	opacity: visible ? 1 : 0
	scale: visible ? 1.0 : 0.0
	height: visible ? 35 : 0
	Behavior on scale {
		NumberAnimation {
			duration: 180
			easing.type: Easing.InOutCubic
		}
	}

	Behavior on opacity {
		NumberAnimation { duration: 120
		easing.type: Easing.InOutCubic
	}
}
}
}
