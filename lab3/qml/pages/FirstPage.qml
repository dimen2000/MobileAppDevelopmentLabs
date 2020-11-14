import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
     id: page
     property int count: 0
     SilicaFlickable {
         anchors.fill: parent
         PullDownMenu {
         MenuItem {
             text: qsTr("Show Page 2")
             onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
         }
         TextField {
             id: text_field1
             label: "Подсказка"
             width: parent.width
             placeholderText: "Заголовок"
             placeholderColor: "#000000"
         }
         Button {
             id: button1
             y: 200
             text: "Кнопка"
             onClicked: {
             button1.down = true
            }
         }
         Button {
             id: button2
             y: 400
             text: "Кнопка"
         }
         Text {
             id: text
             y: 500
             width: parent.width
             text: (button2.down == true) ? "Нажата" : "Отпущена"
         }
         ValueButton {
             id: value_button
             y: 600
             width: parent.width
             label: "Количество нажатий"
             value: page.count
             onClicked: page.count++
         }
    }
}

