import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
import 'package:teste1/app/modules/shared/products_list.dart';

class ProductListWidget extends StatefulWidget {
  final List<ProductModel> products;
  final String category;

  ProductListWidget({this.products, this.category});
  @override
  _ProductListWidgetState createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  List<Widget> finalProductList = [];

  @override
  Widget build(BuildContext context) {
    for (var item in widget.products) {
      if (item.category == widget.category) {
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
                  description: item.description,
                  ref: item.ref,
                  favorite: item.favorite,
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(top: 0),
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

    return SliverGrid.count(
      crossAxisCount: 2,
      children: finalProductList,
    );
  }
}
