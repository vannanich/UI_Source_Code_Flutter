import 'package:flutter/material.dart' show debugPrint;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TestDbHelper {
  //create variable to hold db
  Database? db;

  Future<Database> initDatabase() async {
    if (db != null) {
      return db!;
    } else {
      return await _getDatabase();
    }
  }

  Future<Database> _getDatabase() async {
    var dbPath = await getDatabasesPath();
    var path = join(dbPath, "testExample.db");
    db = await openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute('''
      CREATE TABLE "test" (
        "id"	INTEGER,
        "title"	TEXT,
        "subtitle"	TEXT,
        PRIMARY KEY("id" AUTOINCREMENT)
      );
      ''');
    });
    return db!;
  }
  //crud

  void insertData({required String title, required String subtitle}) async {
    var openDB = await initDatabase();
    openDB.insert("test", {"title": title, "subtitle": subtitle});
  }

  Future<List<Map<String, Object?>>> readData() async {
    var openDB = await initDatabase();
    var data = await openDB.query("test");
    debugPrint("data from db : $data");

    return data;
  }
}
