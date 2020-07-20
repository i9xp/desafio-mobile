import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
import 'package:teste1/app/modules/shared/products_list.dart';

class FavoritesListWidget extends StatefulWidget {
  final List<ProductModel> products;
  final String category;

  FavoritesListWidget({this.products, this.category});
  @override
  _FavoritesListWidgetState createState() => _FavoritesListWidgetState();
}

class _FavoritesListWidgetState extends State<FavoritesListWidget> {
  List<Widget> finalProductList = [];

  @override
  Widget build(BuildContext context) {
    for (var item in widget.products) {
      if (item.favorite == true) {
        finalProductList.add(
          GestureDetector(
            onTap: () {
              Modular.to.pushNamed(
                '/details',
                arguments: ProductModel(
                  id: item.id,
                  nome: item.nome,
                  preco: item.preco,
                  url: item.url,
                  ref: item.ref,
                  favorite: item.favorite,
                ),
              );
            },
            child: Card(
              elevation: 1,
              color: Colors.white,
              child: Column(
                children: [
                  Image.network(
                    item.url,
                    height: 150,
                  ),
                  Text(
                    item.nome,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    'R\$ ${item.preco}',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        );
      }
    }

    return SliverGrid.count(
      crossAxisCount: 2,
      children: finalProductList,
    );
  }
}
