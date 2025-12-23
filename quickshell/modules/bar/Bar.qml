import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell

import qs.widgets.clock

PanelWindow {
	id: bar
	anchors.top: true
	anchors.bottom: true
	anchors.right: true
	implicitWidth: 50
	color: "transparent"

	Rectangle {
		anchors.fill: parent
		z: -1

		gradient: Gradient {
			orientation: Gradient.Horizontal

			GradientStop {
				position: 0.0
				color: Qt.rgba(0, 0, 0, 0.1)
			}

			GradientStop {
				position: 0.2
				color: Qt.rgba(0, 0, 0, 0.3)
			}

			GradientStop {
				position: 0.5
				color: Qt.rgba(0, 0, 0, 0.5)
			}

			GradientStop {
				position: 1.0
				color: Qt.rgba(0, 0, 0, 0.85)
			}
		}
	}

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
		Media {
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
