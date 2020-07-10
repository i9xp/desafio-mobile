import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:i9xp/app/modules/home/stores/cart_store.dart';
import 'package:i9xp/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  CartStore cart;

  setUp(() {
    cart = HomeModule.to.get<CartStore>();
  });

  group('CartStore Test', () {
    test("First Test", () {
      expect(cart, isInstanceOf<CartStore>());
    });

    test("Add to cart", () {
      expect(cart.produtosCarrinho, equals(0));
      cart.setProdutosCarrinho(cart.produtosCarrinho + 1);
      expect(cart.produtosCarrinho, equals(1));
    });
  });
}
