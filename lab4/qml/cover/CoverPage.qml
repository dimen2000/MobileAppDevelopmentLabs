import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    property int counter: 0
    Label {
        id: label
        anchors.centerIn: parent
        text: qsTr("" + counter)
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-cancel"
            onTriggered: counter = 0
        }

        CoverAction {
            iconSource: "image://theme/icon-cover-new"
            onTriggered: counter++
        }
    }
}
