import 'package:desafioi9xp/src/core/enums/loading.enum.dart';
import 'package:desafioi9xp/src/core/interfaces/repository.interface.dart';
import 'package:desafioi9xp/src/core/services/dio.service.dart';
import 'package:desafioi9xp/src/modules/product/models/product.model.dart';

class DashboardRepository implements IRepository {
  final DioService _dio = new DioService();
  ELoadingStatus _loadingStatus = ELoadingStatus.loading;

  getProducts() async {
    _loadingStatus = ELoadingStatus.loading;
    var result = await _dio.get("/products");
    if (result.statusCode >= 200 && result.statusCode < 300) {
      _loadingStatus = ELoadingStatus.completed;
      return List<ProductModel>.from(result.data.map((x) => ProductModel.fromJson(x)));
    } else {
      _loadingStatus = ELoadingStatus.error;
      throw Exception('Falha ao carregar dados');
    }
  }

  getStatus() {
    return _loadingStatus;
  }
}
