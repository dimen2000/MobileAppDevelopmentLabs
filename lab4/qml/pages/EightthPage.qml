import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 9")
                onClicked: pageStack.push(Qt.resolvedUrl("NinethPage.qml"))
            }
        }
    }

    ListModel {
        id: listmodel
        ListElement { name: "to be"; date: "01.01.1999" }
        ListElement { name: "not to be"; date: "01.01.1999" }
        ListElement { name: "in the mind to suffer"; date: "02.01.1999" }
        ListElement { name: "take arms against a sea of troubles"; date: "02.01.1999" }
        ListElement { name: "by opposing end them"; date: "03.01.1999" }
    }
    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: width;
        itemWidth: width;
        model: listmodel
        delegate: Label {
            width: view.itemWidth;
            height: view.itemHeight;
            Text {
                 anchors.centerIn: parent
                 text: name + "\n" + date
            }
        }
    }
}
