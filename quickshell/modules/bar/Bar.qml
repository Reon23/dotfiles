import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell

import qs.widgets.clock

PanelWindow {
	anchors.top: true
	anchors.bottom: true
	anchors.right: true
	implicitWidth: 50
	color: "transparent"

	ColumnLayout {
		anchors.fill: parent
		Logo {
			Layout.alignment: Qt.AlignHCenter 
		}
		Workspaces { 
			Layout.alignment: Qt.AlignHCenter
			Layout.topMargin: 15
		}
		Item {Layout.fillHeight: true}
		Pipewire {
			Layout.alignment: Qt.AlignHCenter
		}
		Resources {
			Layout.alignment: Qt.AlignHCenter
		}
		Battery {
			Layout.alignment: Qt.AlignHCenter
		}
		Clock {  
			Layout.alignment: Qt.AlignHCenter 
		}
	}
}
