pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
  id: root
  property string hour
  property string minute

  // Fetch hour
  Process {
    id: hourProc
    command: ["date", "+%H"]
    running: true

    stdout: StdioCollector {
      onStreamFinished: root.hour = this.text
    }
  }

  Timer {
    interval: 1000
    running: true
    repeat: true
    onTriggered: hourProc.running = true
  }

  // Fetch minute
  Process {
    id: minuteProc
    command: ["date", "+%M"]
    running: true

    stdout: StdioCollector {
      onStreamFinished: root.minute = this.text
    }
  }

  Timer {
    interval: 1000
    running: true
    repeat: true
    onTriggered: minuteProc.running = true
  }
}
