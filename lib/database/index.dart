import 'dart:io';
import 'package:i9xp_commerce/core/database/migrations.dart';
import 'package:sqflite/sqflite.dart';
import '../env.dart';
import 'migrations/001_create_order_item.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initialize();
    return _database;
  }

  List<Migration> migrations = [
    CreateOrderItem(),
  ];

  Future<bool> exists() async {
    String databasePath = await getDatabasesPath();
    String databaseFile = "$databasePath/${environment['databaseName']}";
    return new File(databaseFile).exists();
  }

  Future initialize() async {
    String databasePath = await getDatabasesPath();
    String databaseFile = "$databasePath/${environment['databaseName']}";
    return await openDatabase(databaseFile,
        version: environment['databaseVersion'],
        onOpen: (db) {}, onCreate: (Database db, int version) async {
      var dbBatch = db.batch();
      migrations.forEach((migration) => dbBatch.execute(migration.up()));
      await dbBatch.commit(noResult: true);
    }, onUpgrade: (Database db, currentVersion, newVersion) async {
      var dbBatch = db.batch();
      migrations.forEach((migration) {
        if (currentVersion > migration.version() || newVersion >= migration.version()) dbBatch.execute(migration.up());
      });
      await dbBatch.commit(noResult: true);
    }, onDowngrade: (Database db, currentVersion, newVersion) async {
      var dbBatch = db.batch();
      migrations.forEach((migration) {
        if (currentVersion < migration.version() || newVersion <= migration.version())  dbBatch.execute(migration.down());
      });
      await dbBatch.commit(noResult: true);
    });
  }
}