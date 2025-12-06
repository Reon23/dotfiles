import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell

import qs.services.resources
import qs.widgets.clock
import qs.widgets.dial

PanelWindow {
	anchors.top: true
	anchors.bottom: true
	anchors.right: true
	implicitWidth: 50
	color: "#000000"
	ColumnLayout {
		anchors.fill: parent
		Workspaces { 
			Layout.alignment: Qt.AlignHCenter
			Layout.topMargin: 15
			Layout.rightMargin: 15
		}
		Item {Layout.fillHeight: true}
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
		Clock {  Layout.alignment: Qt.AlignHCenter }
	}
}
