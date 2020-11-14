import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    property int rSize : 200

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 6")
                onClicked: pageStack.push(Qt.resolvedUrl("SixthPage.qml"))
            }
        }
    }

    TextField {
        id:textfield
        y: 200
        width: parent.width
    }

    Button {
        id: dialogbutton
        y: 400
        text: "Dialog"
        onClicked: {
            var dialog = pageStack.push("Sailfish.Silica.TimePickerDialog")
            dialog.accepted.connect(function() {
            textfield.text = dialog.timeText})
        }
    }
}
