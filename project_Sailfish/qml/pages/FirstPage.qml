import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.sapper.saperfield 1.0

Page {
    id: page

    property int fieldsize: 10
    property bool isgenerated: false
    property int chance: 5;

    SaperField {
        id: saperfield
        size: fieldsize
    }

    ListModel {
        id: listmodel
    }

    GridView {
        id: grid
        width: 600
        height: 600
        anchors.centerIn: parent
        anchors.margins: 20

        model: 100

        cellWidth: grid.width/fieldsize
        cellHeight: grid.height/fieldsize

        delegate: numberDelegate
    }

    Component {
        id: numberDelegate

        Rectangle {
            id: rectangle
            width: grid.cellWidth - 5
            height: grid.cellHeight - 5
            property int cord_x: index%fieldsize
            property int cord_y: index/fieldsize
            color: "blue"
            Label {
                id: text
                anchors.centerIn: parent
                color: "#FFFFFF"
                text: saperfield.getCell(cord_x, cord_y)
            }
            MouseArea {
                anchors.fill: parent
                onClicked:{
                    if(page.isgenerated == false) {
                        saperfield.randomFullfil(cord_x, cord_y, page.chance)
                        saperfield.openCell(cord_x, cord_y);
                        page.isgenerated = true;
                    } else {
                        saperfield.openCell(cord_x, cord_y);
                    }
                }
            }
        }
    }
}
