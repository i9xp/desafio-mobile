import 'package:flutter/material.dart';

class CartBloc extends ChangeNotifier {
  var total = 0.0;

  var products = [
    {
      "imagePath": "assets/images/item1.png",
      "imageDetailsPath": "assets/images/Grupo145.png",
      "thumbPath": "assets/images/women_shoes.png",
      "thumbTitle": "Ankle Boots",
      "title": "Faux Sued Ankle Boots",
      "subtitle": "7. Hot Pink",
      "price": 49.99,
      "qnty": 1,
    },
    {
      "imagePath": "assets/images/item2.png",
      "imageDetailsPath": "assets/images/backpack.png",
      "thumbPath": "assets/images/backpack.png",
      "thumbTitle": "Backpack",
      "title": "Bottle Green Backpack",
      "subtitle": "Medium, Green",
      "price": 20.58,
      "qnty": 1,
    },
    {
      "imagePath": "assets/images/item3.png",
      "imageDetailsPath": "assets/images/scarf.png",
      "thumbPath": "assets/images/scarf.png",
      "thumbTitle": "Red Scarf",
      "title": "Red Cotton Scarf",
      "subtitle": "2ft. Dark Red",
      "price": 11.00,
      "qnty": 1,
    },
  ];

  var cart = [];

  getTotal() {
    total = 0.0;
    cart.asMap().forEach((key, value) {
      total += (double.parse(value["price"].toString()) *
          int.parse(value["qnty"].toString()));
    });
    notifyListeners();
  }

  removeItem(index) {
    cart[index]["qnty"] = int.parse(cart[index]["qnty"].toString()) - 1;
    notifyListeners();
  }

  addItem(index) {
    cart[index]["qnty"] = int.parse(cart[index]["qnty"].toString()) + 1;
    notifyListeners();
  }
}
