import 'package:flutter_test/flutter_test.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';

import 'package:i9xp/app/modules/home/services/products_service.dart';

void main() {
  ProductsService service;

  setUp(() {
    service = ProductsService();
  });

  group('ProductsService Test', () {
    test("First Test", () {
      expect(service, isInstanceOf<ProductsService>());
    });

    test('Get produtos', () async {
      final products = await service.getProducts();
      expect(products, isInstanceOf<List<ProductModel>>());
      expect(products.length, equals(3));
    });
  });
}
