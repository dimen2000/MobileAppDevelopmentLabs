import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }
        Rectangle {
            id: trlight
            x: 100
            y: 100
            width:  300
            height: 900
            color: "gray"
            states: [
                State {
                    name: "red"
                    PropertyChanges {
                        target: redCircle
                        color: "red"
                    }
                    PropertyChanges {
                        target: yellowCircle
                        color: "black"
                    }
                    PropertyChanges {
                        target: greenCircle
                        color: "black"
                    }
                },
                State {
                    name: "yellow"
                    PropertyChanges {
                        target: redCircle
                        color: "black"
                    }
                    PropertyChanges {
                        target: yellowCircle
                        color: "yellow"
                    }
                    PropertyChanges {
                        target: greenCircle
                        color: "black"
                    }
                },
                State {
                    name: "green"
                    PropertyChanges {
                        target: redCircle
                        color: "black"
                    }
                    PropertyChanges {
                        target: yellowCircle
                        color: "black"
                    }
                    PropertyChanges {
                        target: greenCircle
                        color: "green"
                    }
                }
            ]
            state: "red"
            Rectangle {
                id: redCircle
                y: 50
                width:  200
                height: 200
                radius: width * 0.5
                anchors.horizontalCenter: parent.horizontalCenter
                color: "black"
            }
            Rectangle {
                id: yellowCircle
                y: 350
                width:  200
                height: 200
                radius: width * 0.5
                anchors.horizontalCenter: parent.horizontalCenter
                color: "black"
            }
            Rectangle {
                id: greenCircle
                y: 650
                width:  200
                height: 200
                radius: width * 0.5
                anchors.horizontalCenter: parent.horizontalCenter
                color: "black"
            }
            Timer {
                id: timer
                repeat: true
                interval: 3000
                onTriggered: {
                    if(trlight.state == "green") {
                        trlight.state = "red"
                        human.state = "start"
                    } else if(trlight.state == "yellow") {
                        trlight.state = "green"
                        human.state = "finish"
                    } else if(trlight.state == "red")
                        trlight.state = "yellow"
                    }
                Component.onCompleted: start()
            }
        }

        Rectangle {
            id: human
            y: 1200
            state: "start"
            width: 20
            height: 40
            color: "black"
            states:[
                State {
                name: "start"
                PropertyChanges {
                    target: human
                    x: 0
                }
            },
                State {
                name: "finish"
                PropertyChanges {
                    target: human
                    x: 700
                }
            }
            ]
            Rectangle {
                y: -20
                width: 20
                height: 20
                radius: width * 0.5
                color: "black"
            }
            transitions: Transition {
                from: "start"
                to: "finish"

                NumberAnimation {
                    property: "x"
                    duration: 3000
                }
            }
        }
    }
}
