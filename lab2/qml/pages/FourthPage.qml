import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    property int rSize : 200

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 5")
                onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
            }
        }
        Rectangle {
            anchors.verticalCenter: parent.verticalCenter
            x : 100
            id: blackRectangle
            color: "black"
            width: rSize
            height: rSize
        }
        Rectangle {
            anchors.verticalCenter: parent.verticalCenter
            id: blackRectangle2
            color: "white"
            width: rSize
            height: rSize
            transform: [Scale{xScale: 0.3}, Rotation {angle: 45}, Translate{x: 500}]
        }
    }
}
