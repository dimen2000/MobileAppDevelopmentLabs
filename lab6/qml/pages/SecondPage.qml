import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 3")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
        }
        Label {
            id: helloworld
            text: "Hello World!!"
            font.pixelSize: 50
            state:  "start"
            anchors.horizontalCenter: parent.horizontalCenter

            MouseArea{
                anchors.fill: parent
                onPressAndHold: helloworld.state = "finish"
                onReleased: helloworld.state = "start"
            }

            states: [
                State {
                    name: "start"
                    PropertyChanges {
                        target: helloworld
                        y : 100
                        rotation: 0
                        color: "blue"
                    }
                },
                State {
                       name: "finish"
                       PropertyChanges {
                           target: helloworld
                           y : 1000
                           rotation: 180
                           color: "red"
                       }
                }
            ]
            transitions: Transition {
                from: "start"
                to: "finish"
                reversible: true

                ParallelAnimation {
                    NumberAnimation {
                        property: "y"
                        duration: 3000
                    }

                    ColorAnimation {
                        duration: 3000
                    }

                    RotationAnimation {
                        duration: 3000
                    }
                }
            }
        }
    }
}
