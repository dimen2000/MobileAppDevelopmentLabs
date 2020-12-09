import QtQuick 2.0
import Sailfish.Silica 1.0
import custom.Counter 1.0


Page {
    id: page

    allowedOrientations: Orientation.All

    Counter {
        id: counter
        count: 42
    }

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            Label {
                text: counter.count
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 64
            }

            Button {
                text: "add"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: counter.increment()
            }

            Button {
                text: "clear"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: counter.reset()
            }
        }
    }
}
