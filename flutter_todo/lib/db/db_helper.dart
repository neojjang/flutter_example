import 'package:sqflite/sqflite.dart';

import '../models/task.dart';

class DBHelper {
  static Database? _db;

  static final int _version = 1;
  static final String _tableName = 'tasks';

  static Future<void> initDb() async {
    if (_db != null) {
      return;
    }

    try {
      String _path = await getDatabasesPath() + 'tasks.db';
      _db = await openDatabase(
        _path,
        version: _version,
        onCreate: (db, version) {
          print("creating a new one");
          return db.execute(
            "CREATE TABLE ${_tableName} ("
            "id INTEGER PRIMARY KEY AUTOINCREMENT, "
            "title String, "
            "note String, "
            "date String, "
            "startTime String, "
            "endTime String, "
            "remind String, "
            "repeat String, "
            "color INTEGER, "
            "isCompleted INTEGER) ",
          );
        },
      );
    } catch (e) {
      print(e.toString());
    }
  }

  static Future<int> insert(Task? task) async {
    print("insert function called");
    return await _db?.insert(
          _tableName,
          task!.toJson(),
        ) ??
        0;
  }

  static Future<List<Map<String, dynamic>>> query() async {
    print('query function called');
    return await _db!.query(_tableName);
  }

  static Future<int> delete(Task task) async {
    return await _db!.delete(_tableName, where: 'id=?', whereArgs: [task.id]);
  }

  static update(int id) async {
    return await _db!.rawUpdate(
      "UPDATE $_tableName SET isCompleted=? WHERE id=?",
      [1, id],
    );
  }
}
