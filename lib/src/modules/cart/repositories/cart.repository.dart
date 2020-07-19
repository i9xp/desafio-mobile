import 'package:desafioi9xp/src/core/enums/loading.enum.dart';
import 'package:desafioi9xp/src/core/interfaces/repository.interface.dart';
import 'package:desafioi9xp/src/core/services/hive.service.dart';

class HomeRepository implements IRepository {
  final HiveService _hive = new HiveService("cart");
  ELoadingStatus _loadingStatus = ELoadingStatus.loading;

  getCartProducts() async {
    _loadingStatus = ELoadingStatus.loading;
    var result = await _hive.get("products");
    if (result) {
      _loadingStatus = ELoadingStatus.completed;
//      return List<CnhModel>.from(response.data["data"].map((x) => CnhModel.fromJson(x)));
    } else {
      _loadingStatus = ELoadingStatus.error;
      throw Exception('Falha ao carregar dados');
    }
  }

  getStatus() {
    return _loadingStatus;
  }
}
