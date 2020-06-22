import 'package:flutter/material.dart';
import 'package:i9xpapp/blocs/CartBloc.dart';
import 'package:provider/provider.dart';

import 'ItemCart.dart';

class ListItems extends StatefulWidget {
  @override
  _ListItemsState createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  @override
  Widget build(BuildContext context) {
    final cartBloc = Provider.of<CartBloc>(context);
    return ListView.builder(
      itemCount: cartBloc.cart.length,
      itemBuilder: (BuildContext ctxt, int index) {
        return ItemCart(
          image: Image.asset(cartBloc.cart[index]["imagePath"]),
          title: cartBloc.cart[index]["title"],
          subtitle: cartBloc.cart[index]["subtitle"],
          price: cartBloc.cart[index]["price"],
          index: index,
        );
      },
    );
  }
}
