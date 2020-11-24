import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 8")
                onClicked: pageStack.push(Qt.resolvedUrl("EighthPage.qml"))
            }
        }
    }

    ConfigurationValue {
        id: settings
        key: "/apps/app_name/settings_name"
        defaultValue: "none"
    }

    Text {
        y: 100
        text: settings.value
    }

    TextField {
        y: 300
        width: parent.width
        label: "Settings"
        id: set_text
    }

    Button {
        y: 500
        width: parent.width
        text: "Confirm"
        onClicked: settings.value = set_text.text
    }
}
