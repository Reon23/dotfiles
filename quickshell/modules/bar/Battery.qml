import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.services

import qs.widgets.dial;

Item {
    width: 35
    height: 35
    opacity: visible ? 1 : 0
    scale: visible ? 1.0 : 0.0

    Layout.alignment: Qt.AlignHCenter
    Layout.bottomMargin: 10

    visible: !Battery.isCharged

    // Scale-in
    Behavior on scale {
        NumberAnimation {
            duration: 300
            easing.type: Easing.InOutCubic
        }
    }

    // Fade-in
    Behavior on opacity {
        NumberAnimation { duration: 120
        easing.type: Easing.InOutCubic
    }
}

Dial {
    Layout.alignment: Qt.AlignHCenter
    value: Battery.percentage * 100
    icon: (!Battery.isCharging)? "󱟞" : "󰂄"
    fillColor: (!Battery.isCharging)? "#ed1144" : "#ffffff"
}
}
