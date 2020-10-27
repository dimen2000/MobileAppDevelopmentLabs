import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    property int rSize : 100

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        Rectangle {
            id: redRectangle
            color: "red"
            width: rSize
            height: rSize
            x: page.width/2 - 3*rSize/2
            y: page.height/2 - rSize/2
            }
        Rectangle {
            id: greenRectangle
            color: "green"
            width: rSize
            height: rSize
            anchors.left: redRectangle.right
            anchors.top: redRectangle.verticalCenter
        }
        Rectangle {
            id: blueRectangle
            color: "blue"
            width: rSize
            height: rSize
            anchors.left: greenRectangle.horizontalCenter
            anchors.bottom: greenRectangle.verticalCenter
            Text {
                id: name
                text: qsTr("Квадрат")
                font.pixelSize: 24
                color: "white"
                y: blueRectangle.height/2 - 24
                x: 8
            }
        }
    }
}
