import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent


        PullDownMenu {
            MenuItem {
                text: "Up"
                onClicked: label.text = "up"
            }

            MenuItem {
                text: qsTr("Show Page 10")
                onClicked: pageStack.push(Qt.resolvedUrl("TenthPage.qml"))
            }

        }

        Label {
            id: label
            y: 400
            text: "nothing"
        }

        PushUpMenu {
            MenuItem {
                text: "Down"
                onClicked: label.text = "down"
            }
        }
    }
}
