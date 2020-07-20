import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/shared/product_model.dart';

class HighlightedProducts extends StatefulWidget {
  final List<ProductModel> products;
  final String category;

  HighlightedProducts({this.products, this.category});
  @override
  _HighlightedProductsState createState() => _HighlightedProductsState();
}

class _HighlightedProductsState extends State<HighlightedProducts> {
  List<Widget> finalProductList = [];

  @override
  Widget build(BuildContext context) {
    for (var item in widget.products) {
      if (item.category == 'highlight') {
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
                  description: item.description,
                  favorite: item.favorite,
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Image.network(
                            item.url,
                            height: 150,
                          ),
                          Text(
                            item.nome,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Center(
                            child: Text(
                              'R\$ ${item.preco}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }

    return ListView(
      children: finalProductList,
      scrollDirection: Axis.horizontal,
    );

    // return GridView.count(
    //   crossAxisCount: 1,
    //   scrollDirection: Axis.horizontal,
    //   children: finalProductList,
    // );
  }
}
