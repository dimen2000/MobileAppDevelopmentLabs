import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    id: page
    allowedOrientations: Orientation.All

    XmlListModel {
        id: xmlModel
        source: 'http://www.cbr.ru/scripts/XML_daily.asp'
        query: "/ValCurs/Valute"

        XmlRole { name: "CharCode"; query: "CharCode/string()" }
        XmlRole { name: "Value"; query: "Value/string()" }
    }
    SilicaListView {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 5")
                onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
            }
        }

        model: xmlModel
        delegate: Column {
            x: 10
            width: 200
            Label {
                wrapMode: Text.WordWrap
                text: CharCode + "\n" + Value + "\n"
            }
        }
    }
}
