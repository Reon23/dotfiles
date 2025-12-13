pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick
import Quickshell.Services.UPower

Singleton {
    id: root
    // Battery data
    property var chargeState: UPower.displayDevice.state
    property bool isCharging: chargeState == UPowerDeviceState.Charging
    property bool isCharged: chargeState == UPowerDeviceState.FullyCharged
    property real percentage: UPower.displayDevice?.percentage
}
