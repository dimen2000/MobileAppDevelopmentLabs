import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
 id: page
     SilicaFlickable {
         anchors.fill: parent
         PullDownMenu {
             MenuItem {
                 text: qsTr("Show Page 3")
                 onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
             }
         }
         DatePicker {
             id: date_picker
             daysVisible: true
             delegate: MouseArea {
                 width: date_picker.cellWidth
                 height: date_picker.cellHeight
                 onClicked: console.log(new Date(year, month-1, day))
                 Label {
                     anchors.centerIn: parent
                     text: day
                     color: "black"
                 }
             }
         }
         TimePicker {
             id: time_picker
             x: 100
             y: 650
             hour: 12
             minute: 30
             onTimeChanged: console.log(time_picker.timeText)
         }
         Label {
             anchors.centerIn: time_picker
             text: time_picker.timeText
             font.pixelSize: Theme.fontSizeExtraLarge
         }
    }
}
