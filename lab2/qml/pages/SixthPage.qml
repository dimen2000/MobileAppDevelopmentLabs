import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent


        Row {
            y: 100
            anchors.horizontalCenter: parent.horizontalCenter
            width: page.width
            spacing: 10
            Column {
                spacing: 10
                width: parent.width/2
                Label {
                    text: "x"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                TextField {
                    id: xField
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                }
            }
            Column {
                spacing: 10
                width: parent.width/2
                Label {
                    text: "y"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                TextField {
                    id: yField
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                }
            }
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "x + y"
            onClicked: console.log(parseInt(xField.text) + parseInt(yField.text))
        }
    }
}
