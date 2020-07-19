import 'package:desafioi9xp/src/core/enums/loading.enum.dart';
import 'package:desafioi9xp/src/core/interfaces/repository.interface.dart';
import 'package:desafioi9xp/src/core/services/dio.service.dart';

class HomeRepository implements IRepository {
  final DioService _dio = new DioService();
  ELoadingStatus _loadingStatus = ELoadingStatus.loading;

  getProducts() async {
    _loadingStatus = ELoadingStatus.loading;
    var result = await _dio.get("/products");
    if (result.statusCode >= 200 && result.statusCode < 300) {
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
