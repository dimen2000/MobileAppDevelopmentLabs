import QtQuick 2.0

Rectangle {
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
            if(parent.state === "green") {
                parent.state = "red"
            } else if(parent.state === "yellow") {
                parent.state = "green"
            } else if(parent.state === "red")
                parent.state = "yellow"
            }
        Component.onCompleted: start()
    }
}
