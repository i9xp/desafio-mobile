import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:teste1/app/modules/resources/products_repository_interface.dart';
import 'package:teste1/app/modules/shared/product_model.dart';

class ProductsRepository implements IProductsRepository {
  final Firestore firestore;

  ProductsRepository(this.firestore);

  @override
  Stream<List<ProductModel>> getProducts() {
    return firestore.collection('products').snapshots().map((query) {
      return query.documents.map((document) {
        return ProductModel.fromDocument(document);
      }).toList();
    });
  }
}
