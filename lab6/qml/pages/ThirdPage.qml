import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 4")
                onClicked: pageStack.push(Qt.resolvedUrl("FourthPage.qml"))
            }
        }
        TrafficLights{
            x: 100
            y: 100
        }
    }
}
