pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root

    property int memUsage: 0

    Process {
        id: memProc
        command: ["sh", "-c", "free -h | grep 'Mem:' | awk '{ print ($3 / $2) * 100 }'"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.memUsage = this.text
        }
    }

    Timer {
        interval: 2000
        running: true
        repeat: true
        onTriggered: memProc.running = true
    }
}
