import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    property alias textValue: textField.text

    DialogHeader {}
    TextField {
        id: textField
        y: 400
        width: parent.width
    }
}
