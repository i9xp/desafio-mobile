import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

abstract class Model<T extends Model<T>>{

  String table();
  T parser(Map<String, dynamic> body);
  Map<String, dynamic> serializer();
  
  RxInt id = RxInt(null);
  setId(int id) => this.id.value = id;

  //START QUERY BUILDER

  Future<List<T>> _list(dynamic db) async {
    List<Map<String, dynamic>> records = await db.query(table());
    return await Future.wait(records.map((Map<String, dynamic> record) async {
      return parser(record);
    }));
  }

  Future<T> _find(dynamic db, {int id, Map<String, dynamic> args}) async {
    List<String> where = [];
    List<dynamic> whereArgs = List<dynamic>();
    if(id != null || this.id.value != null){
      where.add("id = ?");
      whereArgs.add(id ?? this.id.value);
    }
    if(args != null){
      args.forEach((key, value) {
        where.add("$key = ?");
        whereArgs.add(value);
      });
    }
    List<Map<String, dynamic>> record = await db.query(
      table(),
      where: where.join(" AND "),
      whereArgs: whereArgs,
    );
    return record.isEmpty ? null : parser(record.first);
  }

  Future<T> _upsert(dynamic db) async {
    return this.id.value == null ? await _create(db) : await _update(db);
  }

  Future<T> _create(dynamic db) async {
    Map<String, dynamic> body = serializer();
    //Remove all entries with value = null to prevent insert null on table
    body.removeWhere((key, value) => value == null);
    String currentTime = DateFormat("yyyy-MM-dd HH:mm:ss").format(
      new DateTime.now(),
    );
    body.addAll({
      "created_at": currentTime,
      "updated_at": currentTime,
    });
    int id = await db.insert(
      table(),
      body,
    );
    return await this._find(db, id: id);
  }

  Future<T> _update(dynamic db, {int id}) async {
    if (this.id.value == null && id == null) return null;
    Map<String, dynamic> body = serializer();
    //Remove all entries with value = null to prevent insert null on table
    body.removeWhere((key, value) => value == null);
    body.removeWhere((key, value) => ["created_at", "id"].contains(key));
    String currentTime = DateFormat("yyyy-MM-dd HH:mm:ss").format(
      new DateTime.now(),
    );
    body.addAll({
      "updated_at": currentTime,
    });
    await db.update(
      table(),
      body,
      where: "id = ?",
      whereArgs: [id ?? this.id.value],
    );
    return await this._find(db, id: id ?? this.id.value);
  }

  Future<bool> _delete(dynamic db, {int id}) async {
    if (this.id.value == null && id == null) return false;
    int affecteds = await db.delete(
      table(),
      where: "id = ?",
      whereArgs: [id ?? this.id.value],
    );
    return affecteds == 1;
  }

  //END QUERY BUILDER

  //END ORM RELATION FUNCTIONS
  Future<T> upsertTrx(Transaction trx) async => await this._upsert(trx);
  Future<T> upsertDb(Database db) async => await this._upsert(db);
  Future<T> createTrx(Transaction trx) async => await this._create(trx);
  Future<T> createDb(Database db) async => await this._create(db);
  Future<List<T>> listTrx(Transaction trx) async => await this._list(trx);
  Future<List<T>> listDb(Database db) async => await this._list(db);
  Future<T> findTrx(Transaction trx, { int id, Map<String, dynamic> args }) async => await this._find(trx, id:id, args: args);
  Future<T> findDb(Database db, { int id, Map<String, dynamic> args }) async => await this._find(db, id:id, args: args);
  Future<T> updateTrx(Transaction trx, { int id }) async => await this._update(trx, id:id);
  Future<T> updateDb(Database db, { int id }) async => await this._update(db, id:id);
  Future<bool> deleteTrx(Transaction trx, { int id }) async => await this._delete(trx, id:id);
  Future<bool> deleteDb(Database db, { int id }) async => await this._delete(db, id:id);

}