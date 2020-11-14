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
                text: qsTr("Show Page 5")
                onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
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
            var dialog = pageStack.push("Sailfish.Silica.DatePickerDialog")
            dialog.accepted.connect(function() {
            textfield.text = dialog.dateText})
        }
    }
}
