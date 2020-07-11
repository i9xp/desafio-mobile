import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';

import 'package:i9xp/app/modules/home/stores/cart_store.dart';
import 'package:i9xp/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  CartStore cart;
  ProductModel a;
  ProductModel b;

  setUp(() {
    cart = HomeModule.to.get<CartStore>();
    a = ProductModel(id: "1", price: "10.00");
    b = ProductModel(id: "2", price: "20.00");
  });

  group('CartStore Test', () {
    test("Inicialização", () {
      expect(cart, isInstanceOf<CartStore>());
      expect(cart.hasProducts, equals(false));
      expect(cart.length, equals(0));
      expect(cart.totalAmount, equals(0.0));
    });

    test("Adiciona item ao carrinho", () {
      cart.addProduct(a);
      expect(cart.totalAmount, equals(10.0));
      expect(cart.length, equals(1));
      expect(cart.hasProducts, equals(true));
    });

    test("Remove item do carrinho", () {
      expect(cart.hasProducts, equals(true));
      cart.removeProduct("1");
      expect(cart.hasProducts, equals(false));
    });

    test("Adiciona dois itens diferentes no carrinho", () {
      expect(cart.hasProducts, equals(false));
      expect(cart.length, equals(0));
      expect(cart.totalAmount, equals(0.0));

      cart.addProduct(a);
      expect(cart.totalAmount, equals(10.0));
      expect(cart.length, equals(1));
      expect(cart.hasProducts, equals(true));

      cart.addProduct(b);
      expect(cart.length, equals(2));
      expect(cart.totalAmount, equals(30.0));
      expect(cart.hasProducts, equals(true));
    });

    test("Incrementa quantidade de um produto", () {
      cart.addProduct(a);
      expect(cart.length, equals(3));
      expect(cart.totalAmount, equals(40.0));
      expect(cart.hasProducts, equals(true));

      cart.addProduct(a);
      expect(cart.length, equals(4));
      expect(cart.totalAmount, equals(50.0));
      expect(cart.hasProducts, equals(true));

      cart.addProduct(b);
      expect(cart.length, equals(5));
      expect(cart.totalAmount, equals(70.0));
      expect(cart.hasProducts, equals(true));

      cart.addProduct(b);
      expect(cart.length, equals(6));
      expect(cart.totalAmount, equals(90.0));
      expect(cart.hasProducts, equals(true));
    });

    test("Decrementa quantidade de um produto", () {
      cart.removeProduct(a.id);
      expect(cart.length, equals(5));
      expect(cart.totalAmount, equals(80.0));
      expect(cart.hasProducts, equals(true));

      cart.removeProduct(b.id);
      expect(cart.length, equals(4));
      expect(cart.totalAmount, equals(60.0));
      expect(cart.hasProducts, equals(true));

      cart.removeProduct(a.id);
      expect(cart.length, equals(3));
      expect(cart.totalAmount, equals(50.0));
      expect(cart.hasProducts, equals(true));

      cart.removeProduct(a.id);
      expect(cart.length, equals(2));
      expect(cart.totalAmount, equals(40.0));
      expect(cart.hasProducts, equals(true));

      // Removido todos do produto A.
      expect(cart.contains(a.id), equals(-1));
    });
    test("Limpa o carrinho", () {
      expect(cart.hasProducts, equals(true));
      cart.clear();
      expect(cart.hasProducts, equals(false));
    });

    test("Remove item inexistente do carrinho", () {
      expect(cart.hasProducts, equals(false));
      cart.removeProduct("1");
      expect(cart.hasProducts, equals(false));
    });
  });
}
