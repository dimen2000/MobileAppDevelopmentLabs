import QtQuick 2.0

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
     id: page
     SilicaFlickable {
         anchors.fill: parent
         PullDownMenu {
         MenuItem {
         text: qsTr("Show Page 2")
         onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
        }
     }
     ComboBox {
         label: "Список"
         menu: ContextMenu {
             MenuItem {
                 id: first
                 text: "Строка"
             }
             MenuItem {
                 id: second
                 text: "строка"
             }
             MenuItem {
                 id: third
                 text: "Стр0ка"
             }
         }
         onCurrentIndexChanged: console.log(value)
     }
     Column {
         width: parent.width
         y: 500
         TextSwitch {
                 text: "Включен"
                 id: on_text
                 onClicked: off_text.checked = false
                 highlighted: false
             }
             TextSwitch {
                 text: "Выключен"
                 id: off_text
                 onClicked: on_text.checked = false
                 highlighted: false
             }
         }
         Slider {
             width: parent.width
             y: 700
             label: '0'
             maximumValue: 50
             minimumValue: -50
             value: 0
             stepSize: 1
             onValueChanged: label = value
         }
     }
}
