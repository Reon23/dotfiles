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
		Workspaces { }
		Clock { }
	}
}
