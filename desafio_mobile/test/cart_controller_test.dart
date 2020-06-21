import 'package:desafio_mobile/controllers/cart_controller.dart';
import 'package:desafio_mobile/models/cart_item_model.dart';
import 'package:desafio_mobile/models/product_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group("CartController", (){
    test("When add item in cart should contains that item", (){
      final ProductModel productModel = ProductModel();
      final CartController controller = CartController();
      
      productModel.icon = "assets/images/backpack.png";
      productModel.name = "Backpack";
      productModel.material = "Kevlar";
      productModel.price = 20.58;

      controller.addItem(productModel);

      expect(controller.itens.length, 1);
      expect(controller.total, 20.58);
    });

    test("When add total to receive price should to add at total", (){
      final CartController controller = CartController();

      expect(controller.total, 0.00);

      controller.addTotal(25.13);

      expect(controller.total, 25.13);
    });

    test("When this action was called should reset the itens and total values", (){
      final ProductModel productModel = ProductModel();
      final CartController controller = CartController();
      
      productModel.icon = "assets/images/backpack.png";
      productModel.name = "Backpack";
      productModel.material = "Kevlar";
      productModel.price = 20.58;

      controller.addItem(productModel);

      expect(controller.itens.length, 1);
      expect(controller.total, 20.58);

      controller.resetValues();

      expect(controller.itens.isEmpty, true);
      expect(controller.total, 0.00);

    });
  });
}