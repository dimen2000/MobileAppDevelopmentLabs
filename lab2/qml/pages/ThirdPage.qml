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
                text: qsTr("Show Page 4")
                onClicked: pageStack.push(Qt.resolvedUrl("FourthPage.qml"))
            }
        }

        Grid {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 10
            columns: 3
            rows: 2
            Rectangle {
                id: redRectangle
                color: "red"
                width: rSize
                height: rSize
             }
            Rectangle {
                id: greenRectangle
                color: "green"
                width: rSize
                height: rSize
            }
            Rectangle {
                id: blueRectangle
                color: "blue"
                width: rSize
                height: rSize
            }
            Rectangle {
                id: pinkRectangle
                color: "pink"
                width: rSize
                height: rSize
            }
            Rectangle {
                id: whiteRectangle
                color: "white"
                width: rSize
                height: rSize
            }
            Rectangle {
                id: blackRectangle
                color: "black"
                width: rSize
                height: rSize
            }
        }
    }
}
