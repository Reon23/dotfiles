import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.widgets.clock

PanelWindow {
	anchors.top: true
	anchors.bottom: true
	anchors.right: true
	implicitWidth: 40
	color: "#000000"
	ColumnLayout {
		anchors.fill: parent
		Workspaces { 
			Layout.alignment: Qt.AlignHCenter
			Layout.topMargin: 15
			Layout.rightMargin: 15
		}
		Item {Layout.fillHeight: true}
		Clock {  Layout.alignment: Qt.AlignHCenter }
	}
}
