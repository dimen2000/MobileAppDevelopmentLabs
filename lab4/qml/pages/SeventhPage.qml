import QtQuick 2.0

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 8")
                onClicked: pageStack.push(Qt.resolvedUrl("EightthPage.qml"))
            }
        }
        SilicaWebView {
            anchors.fill: parent
            url: "https://ru.wikipedia.org/wiki/Путин,_Владимир_Владимирович"
        }
    }
}
