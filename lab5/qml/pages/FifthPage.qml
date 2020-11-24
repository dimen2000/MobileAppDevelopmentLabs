import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    id: page
    allowedOrientations: Orientation.All

    function load() {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'http://www.cbr.ru/scripts/XML_daily.asp', true);
        xhr.onreadystatechange = function() {
            if(xhr.readyState === XMLHttpRequest.DONE) {
                xmlModel.xml = xhr.responseText;
            }
        }
        xhr.send();
    }

    XmlListModel {
        id: xmlModel
//        source: 'http://www.cbr.ru/scripts/XML_daily.asp'
        query: "/ValCurs/Valute"

        XmlRole { name: "CharCode"; query: "CharCode/string()" }
        XmlRole { name: "Value"; query: "Value/string()" }
    }
    SilicaListView {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 6")
                onClicked: pageStack.push(Qt.resolvedUrl("SixthPage.qml"))
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
        Component.onCompleted: load()
    }
}
