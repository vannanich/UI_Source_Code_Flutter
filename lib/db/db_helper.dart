import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
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
    var path = join(dbPath, "example2.db");
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE "tb_note" (
            "id"  INTEGER,
            "title"  TEXT,
            "subtitle"  TEXT,
            PRIMARY KEY("id" AUTOINCREMENT)
          );
        ''');
      },
    );
    return db!;
  }

  //Crud
  void insertData({required String title, required String subtitle}) async {
    var openDB = await initDatabase();
    openDB.insert("tb_note", {"title": title, "subtitle": subtitle});
  }

  Future<List<Map<String, dynamic>>> readData() async {
    var openDB = await initDatabase();
    var data = await openDB.query("tb_note");
    debugPrint("Data fro db : $data");

    return data;
  }

  void deleteData(int id) async {
    var openDB = await initDatabase();

    openDB.delete("tb_note", where: "id = ?", whereArgs: [id]);
  }

  void updateData(
      {required String title,
      required String subtitle,
      required int id}) async {
    var openDB = await initDatabase();
    openDB.update(
      "tb_note",
      {
        "title": title,
        "subtitle": subtitle,
      },
      // ask like ter nv id lek man ? than jam bos whereArgs 
      where: "id=?",
      whereArgs: [id],
    );
  }
}
