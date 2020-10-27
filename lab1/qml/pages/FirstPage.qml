import QtQuick 2.0
import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    property int counter: 2000
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Awesome Sailfish clicker " + String(counter))
            }
            Button {
                id: counter_up_button

                x: Theme.horizontalPageMargin
                onClicked: counter = counter + 1
                text: qsTr("add")
            }
        }
    }
}

