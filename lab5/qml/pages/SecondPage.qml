import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    ListModel {
        id: listModel

        ListElement {
            text: "element "
        }
        ListElement {
            text: "element "
        }
        ListElement {
            text: "element "
        }
    }

    SilicaListView {
        anchors.fill: parent

        Button {
            x: 400
            y: 400
            text: "add"
            onClicked: listModel.append({text: "element "})
        }

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 3")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
        }


        model: listModel
        delegate: Rectangle {
            width: 200
            height: 100
            MouseArea {
                anchors.fill: parent
                onClicked: listModel.remove(model.index)
            }
            Text {
                text: model.text + model.index
            }
        }
    }
}
