import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        anchors.fill: parent
        model: 20
        delegate: ListItem {
            id: deligate
            Label {
                x: Theme.paddingLarge
                text: "List item " + index
                color: deligate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu {
                MenuLabel {text: "Context Menu"}
                MenuItem {
                    text: "Menu item 1"
                    onClicked: console.log("\nList item " + index + "\n" + text)
                }
                MenuItem {
                    text: "Menu item 2"
                    onClicked: console.log("\nList item " + index + "\n" + text)
                }
            }
        }
    }
}
