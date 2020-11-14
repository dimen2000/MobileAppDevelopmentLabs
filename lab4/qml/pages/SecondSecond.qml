import QtQuick 2.0

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    Button {
        id: button
        y: 200
        text: "Return"
        onClicked: pageStack.navigateBack()
    }
}
