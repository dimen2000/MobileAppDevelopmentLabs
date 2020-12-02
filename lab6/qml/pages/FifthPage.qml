import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 6")
                onClicked: pageStack.push(Qt.resolvedUrl("SixthPage.qml"))
            }
        }
        StopWatch {
            id: watch
            x: 100
            y: 100
        }
        Button {
            x: 100
            y: 200
            onClicked: timer.running ? timer.stop() : timer.start()
            text: "timer"
        }
        Timer {
            id: timer
            repeat: true
            interval: 1000
            onTriggered: watch.timeTic()
        }
    }
}
