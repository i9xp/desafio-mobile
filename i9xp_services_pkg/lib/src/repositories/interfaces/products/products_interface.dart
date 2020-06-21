import 'package:i9xp_services_pkg/src/models/http/response_status.dart';
import 'package:i9xp_services_pkg/src/models/product/product_model.dart';

abstract class IProductsRepository {
  Future<ResponseStatus<List<ProductModel>>> get();
}