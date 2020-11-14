import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 3")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
        }
    }

    Button {
        id: pushbutton
        y: 200
        text: "Add page"
        onClicked: pageStack.pushAttached(Qt.resolvedUrl("SecondSecond.qml"))
    }

    Button {
        id: popbutton
        y: 300
        text: "Delete page"
        onClicked: pageStack.popAttached()
    }
}

