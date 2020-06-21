import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:flutter/material.dart';

class CartTileWidget extends StatelessWidget {
  final ProductModel product;

  const CartTileWidget({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(64),
            ),
            child: Image.network(product.thumbnail),
          ),
          SizedBox(width: 20),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(product.name,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontSize: 22, fontWeight: FontWeight.w500)),
                Text(product.category,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontSize: 19, fontWeight: FontWeight.w200)),
                SizedBox(height: 15),
                Text("R\$ ${product.price.toStringAsFixed(2)}",
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).buttonColor)),
              ])
        ],
      ),
    );
  }
}
