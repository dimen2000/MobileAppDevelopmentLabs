import QtQuick.LocalStorage 2.0
import QtQuick 2.0

Item {
    property var db;

    Component.onCompleted: {
        db = LocalStorage.openDatabaseSync("Notes", "1.0");
        createNotesTable();
    }

    function createNotesTable() {
        db.transaction(function(tx) {
            tx.executeSql("CREATE TABLE IF NOT EXISTS notes (id INTEGER PRIMARY KEY AUTOINCREMENT,"
                          + "note TEXT NOT NULL);");
        });
    }

    function insertNote(tx) {
        db.transaction(function(TX) {
            TX.executeSql("INSERT INTO notes (note) VALUES(?);", [tx]);
        });
    }

    function deleteNote(id) {
        db.transaction(function(tx) {
            tx.executeSql("DELETE FROM notes WHERE id = ?;", [id]);
        });
    }

    function readNote(callback) {
        db.readTransaction(function(tx) {
            var res = tx.executeSql("Select * FROM notes");
//            for(var i = 0; i < res.rows.length; ++i)
//                deleteNode(res.rows.item(i))
            callback(res.rows);
        });
    }
}
