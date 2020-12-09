import QtQuick 2.0
import Sailfish.Silica 1.0
import custom.StrList 1.0


Page {
    id: page

    allowedOrientations: Orientation.All

    StrList {
        id: list_strings
    }

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            TextField {
                id: text_field
                width: parent.width
            }

            Button {
                text: "add"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: {
                    list_strings.append(text_field.text);
                }
            }

            Button {
                text: "remove"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: list_strings.removeLast()
            }

            Label {
                id: label_list_strings
                width: page.width
                wrapMode: "Wrap"
                text: list_strings.list
            }
        }
    }
}
