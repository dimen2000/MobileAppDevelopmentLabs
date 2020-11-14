import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }
    }

    Button {
        id: pushbutton
        y: 200
        text: "Push"
        onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
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
