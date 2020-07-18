import 'package:desafioi9xp/src/core/interfaces/localstorage.interface.dart';
import 'package:hive/hive.dart';

class HiveService implements ILocalStorage {
  var box;
  String boxName;

  HiveService(this.boxName) {
    box = Hive.box(boxName);
  }

  @override
  Future delete(String key) {
    return box.delete(key);
  }

  @override
  Future get(String key) {
    return box.get(key);
  }

  @override
  Future put(String key, dynamic value) {
    return box.put(key, value);
  }
}
