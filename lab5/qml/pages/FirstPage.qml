import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    ListModel {
        id: listModel

        ListElement {
            color: "red"
        }
        ListElement {
            color: "blue"
        }
        ListElement {
            color: "green"
        }
    }

    SilicaListView {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        model: listModel
        delegate: Rectangle {
            width: 200
            height: 100
            color: model.color
            Text {
                text: model.color
            }
        }
    }
}
