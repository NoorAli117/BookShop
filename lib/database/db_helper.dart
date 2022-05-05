import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static const NEW_DB_VERSION = 1;

  static final DbHelper _instance = DbHelper.internal();

  factory DbHelper() => _instance;

  DbHelper.internal();

  Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    } else {
      _db = await initDb();
      return _db!;
    }
  }

  Future<Database> initDb() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, "assets/database/BookStore.db");
    print(path);
    var db = await openDatabase(path);

    //if database does not exist yet it will return version 0
    if (await db.getVersion() < NEW_DB_VERSION) {
      db.close();

      //delete the old database so you can copy the new one
      await deleteDatabase(path);

      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      //copy db from assets to database folder
      ByteData data =
          await rootBundle.load(join("assets/database", "BookStore.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes, flush: true);

      //open the newly created db
      db = await openDatabase(path);

      //set the new version to the copied db so you do not need to do it manually on your bundled database.db
      db.setVersion(NEW_DB_VERSION);
    }

    return db;
  }
}
