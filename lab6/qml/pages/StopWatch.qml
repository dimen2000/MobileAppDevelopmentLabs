import QtQuick 2.0

Item {
    property var hours: 0
    property var minutes: 0
    property var seconds: 0
    Text{
        font.pixelSize: 64
        text: hours + ":" + minutes + ":" + seconds
    }
    function timeTic() {
        seconds++
        if(seconds == 60) {
            seconds = 0
            minutes++
            if(minutes == 60)
                hours++
        }
    }
}
