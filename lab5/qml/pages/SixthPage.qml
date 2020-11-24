import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    ListModel {
        id: notesListModel
    }

    DAO {id: dao}
    SilicaListView {
        anchors.fill: parent
        width: parent.width
        model: notesListModel

        TextField {
            y: 650
            width: parent.width/2
            label: "Note"
            id: newNote
            Text {
                color: "white"
            }
        }

        Button {
            y: 800
            id: add
            text: "Add"
            onClicked: {
                addNote(newNote.text)
            }
        }

        delegate: Label {
            x: parent.width/2
            text: model.cur_note
            MouseArea {
                anchors.fill: parent
                onClicked: deleteNote(model.id)
            }
        }

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 7")
                onClicked: pageStack.push(Qt.resolvedUrl("SeventhPage.qml"))
            }
        }
    }

    function addNote(text) {
        dao.insertNote(text);
        selectNote();
    }

    function deleteNote(id) {
        dao.deleteNote(id);
        selectNote();
    }

    function selectNote() {
        notesListModel.clear();
        dao.readNote(function(notes) {
            for (var i = 0; i < notes.length; i++) {
                var note = notes.item(i);
                notesListModel.append({ id: note.id, cur_note: note.note });
            }
        });
    }
    Component.onCompleted: selectNote()
}
