import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDb {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDb();
      return _db;
    } else {
      return _db;
    }
  }

  initDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'favourite.db');
    Database myDb = await openDatabase(
      path,
      onCreate: _onCreate,
      version: 1,
      onUpgrade: _onUpgrade,
    );
    return myDb;
  }

  _onCreate(Database db, int version) async {
    Batch batch = db.batch();
    batch.execute(
        'CREATE TABLE "FavouriteItems" ("id" INTEGER NOT NULL PRIMARY KEY,"title" Text NOT NULL, "image" Text NOT NULL)');
    batch.commit();
    print('onCreate=================================');
  }

  _onUpgrade(Database db, int oldVersion, int newVersion) async {
    print('_onUpgrade=================================');
  }




  Future<List<Map>?> read() async {
    Database? myDb = await db;
    List<Map>? response = await myDb?.query("FavouriteItems");
    return response;
  }

  insert(int id,String title,String image,) async {
    Database? myDb = await db;
    int? response = await myDb?.insert(
      "FavouriteItems",
      {
        'id': id,
        'title': title,
        'image': image,
      },
    );

    return response;
  }

  delete(int id) async {
    Database? myDb = await db;
    int? response = await myDb?.delete("FavouriteItems", where: 'id =$id');
    return response;
  }


  deleteMyDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath,'favourite.db');
    await deleteDatabase(path);
  }

}
