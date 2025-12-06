pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root

    property int diskUsage: 0

    Process {
        id: diskProc
        command: ["sh", "-c", "df -h | grep -E ' /$' | awk '{ print $5 }' | tr -d '%'"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.diskUsage = this.text
        }
    }

    Timer {
        interval: 30000
        running: true
        repeat: true
        onTriggered: diskProc.running = true
    }
}
