import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 7")
                onClicked: pageStack.push(Qt.resolvedUrl("SeventhPage.qml"))
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
        SilicaListView {
        anchors.fill: parent
        model: listmodel
        header: PageHeader {title: "Tasks"}
        section {
                property: 'date'
                delegate: SectionHeader { text: section }
            }
            delegate: Text { text: name}
        }
    }
}
