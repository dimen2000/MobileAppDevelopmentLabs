import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    property int rSize : 200
    property int finalSize : 400

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 6")
                onClicked: pageStack.push(Qt.resolvedUrl("SixthPage.qml"))
            }
        }
        Rectangle {
            id: blackRectangle
            color: "black"
            width: rSize
            height: rSize
            ParallelAnimation{
                running: true
                NumberAnimation { target: blackRectangle; property: "x"; to: page.width - finalSize - 50; duration: 10000 }
                NumberAnimation { target: blackRectangle; property: "y"; to: page.height - finalSize - 50; duration: 10000 }
                NumberAnimation { target: blackRectangle; property: "width"; to: finalSize; duration: 10000 }
                NumberAnimation { target: blackRectangle; property: "height"; to: finalSize; duration: 10000 }
            }
        }
    }
}
