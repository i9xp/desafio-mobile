import '../shared/product_model.dart';

abstract class IProductsRepository {
  Stream<List<ProductModel>> getProducts();
}
