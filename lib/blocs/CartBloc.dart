import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

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
      "qnty": 1
    },
    {
      "imagePath": "assets/images/item2.png",
      "imageDetailsPath": "assets/images/backpack.png",
      "thumbPath": "assets/images/backpack.png",
      "thumbTitle": "Backpack",
      "title": "Bottle Green Backpack",
      "subtitle": "Medium, Green",
      "price": 20.58,
      "qnty": 1
    },
    {
      "imagePath": "assets/images/item3.png",
      "imageDetailsPath": "assets/images/scarf.png",
      "thumbPath": "assets/images/scarf.png",
      "thumbTitle": "Red Scarf",
      "title": "Red Cotton Scarf",
      "subtitle": "2ft. Dark Red",
      "price": 11.00,
      "qnty": 1
    }
  ];

  var cart = [];

  void getProducts() async {
    try {
      var response = await http
          .get("https://run.mocky.io/v3/50f31a1b-365d-492c-a8ae-cb7963bdafb5");
      var body = jsonDecode(response.body);
      print(body);
    } catch (e) {
      print(e);
    }
  }

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> setQnty(String item, int valor) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setInt(item, valor);
  }

  Future<int> getQnty(String item) async {
    final SharedPreferences prefs = await _prefs;
    return (prefs.getInt(item));
  }

  Future<void> removeCart(String item) async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(item);
  }

  Future<int> getItems() async {
    var total = 0;
    final SharedPreferences prefs = await _prefs;
    prefs.getKeys().forEach((element) {
      total += prefs.getInt(element);
    });
    return total;
  }

  getTotal() {
    total = 0.0;
    cart.asMap().forEach((key, value) {
      total += (double.parse(value["price"].toString()) *
          int.parse(value["qnty"].toString()));
    });
  }

  removeItem(index) {
    var newValue = int.parse(cart[index]["qnty"].toString()) - 1;
    if (newValue == 0) {
      removeCart(cart[index]["title"]).then((value) => cart.removeAt(index));
    } else {
      setQnty(
          cart[index]["title"], int.parse(cart[index]["qnty"].toString()) - 1);
      cart[index]["qnty"] = int.parse(cart[index]["qnty"].toString()) - 1;
    }
    notifyListeners();
  }

  addItem(index) {
    setQnty(
        cart[index]["title"], int.parse(cart[index]["qnty"].toString()) + 1);
    cart[index]["qnty"] = int.parse(cart[index]["qnty"].toString()) + 1;
    notifyListeners();
  }

  Future<void> recoveryCart() async {
    final SharedPreferences prefs = await _prefs;
    prefs.getKeys().forEach((element) {
      products.forEach((produto) {
        if (produto["title"] == element) {
          for (var product in products) {
            if (product.containsValue(element)) {
              if (!cart.contains(product)) {
                cart.add(product);
                cart.forEach((e) {
                  if (e == product) {
                    getQnty(e["title"]).then((value) => e["qnty"] = value);
                    notifyListeners();
                  }
                });
              }
            }
          }
        }
      });
    });
  }
}
