import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    ConfigurationGroup {
        id: settings
        path: "/apps/app_name/settings"
        property string str
    }

    Text {
        y: 100
        text: settings.str
    }

    TextField {
        y: 200
        width: parent.width
        label: "Settings"
        id: set_text
    }

    Button {
        y: 500
        width: parent.width
        text: "Confirm"
        onClicked: settings.str = set_text.text
    }
}
