import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
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
    }
}
