import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property var adds: 0
    property var deletes: 0
    property var depth: pageStack.depth

    allowedOrientations: Orientation.All

    Connections {
        target: pageStack
        onDepthChanged: {
            var diff = pageStack.depth - depth
            if(diff < 0)
                deletes++
            else
                adds += diff
            depth =  pageStack.depth

        }
    }
    SilicaFlickable {
        anchors.fill: parent

        Button {
            id: pushbutton
            y: 200
            text: "Push"
            onClicked: pageStack.push(Qt.resolvedUrl("SeventhPage.qml"))
        }

        Button {
            id: popbutton
            y: 300
            text: "Pop"
            onClicked: pageStack.pop()
        }
        Label {
            y: 400
            text: "Глубина стека: " + pageStack.depth
        }
        Label {
            y: 500
            text: "Удалений: " + deletes
        }
        Label {
            y: 600
            text: "Добавлений: " + adds
        }
    }
}
