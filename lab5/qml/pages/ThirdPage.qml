import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    property var dataModel: [
        {color: "red"},
        {color: "blue"},
        {color: "green"}
    ]
    SilicaListView {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 4")
                onClicked: pageStack.push(Qt.resolvedUrl("FourthPage.qml"))
            }
        }

        model: dataModel
        delegate: Rectangle {
            width: 200
            height: 100
            color: modelData.color
            Text {
                text: modelData.color
            }
        }
    }
}
