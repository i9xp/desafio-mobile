import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
import 'details_page_controller.dart';

class DetailsPagePage extends StatefulWidget {
  final String title;
  final ProductModel produtoModel;
  const DetailsPagePage({Key key, this.title, this.produtoModel})
      : super(key: key);

  @override
  _DetailsPagePageState createState() => _DetailsPagePageState();
}

class _DetailsPagePageState
    extends ModularState<DetailsPagePage, DetailsPageController> {
  //use 'controller' variable to access controller

  ProductModel actualProduct;

  @override
  Widget build(BuildContext context) {
    actualProduct = widget.produtoModel;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 350.0,
              iconTheme: IconThemeData.fallback(),
              floating: true,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.network(
                  widget.produtoModel.url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Padding(
              child: Text(
                widget.produtoModel.nome ?? '',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.only(left: 19),
            ),
            Padding(
              child: Text(widget.produtoModel.description ?? ''),
              padding: EdgeInsets.only(left: 19),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'R\$ ${widget.produtoModel.preco}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 0),
                height: 40,
                child: RaisedButton(
                  elevation: 4,
                  color: Colors.yellow[700],
                  onPressed: () async {
                    controller.adicionarProdutoNoCarrinho(widget.produtoModel);

                    Modular.to.pushNamed('/shoppingcart');
                  },
                  child: Text('Adicionar ao carrinho'),
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        backgroundColor: Colors.yellow[700],
        child: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
        onPressed: () {
          if (actualProduct.favorite == false) {
            widget.produtoModel.ref.updateData({'favorite': true});
            widget.produtoModel.favorite = true;
            Flushbar(
              animationDuration: Duration(milliseconds: 400),
              duration: Duration(milliseconds: 3000),
              icon: Icon(
                Icons.favorite,
                color: Colors.yellow[700],
              ),
              message: 'Este produto foi adicionado aos seus favoritos',
            )..show(context);
          } else {
            widget.produtoModel.ref.updateData({'favorite': false});
            widget.produtoModel.favorite = false;
            Flushbar(
              animationDuration: Duration(milliseconds: 400),
              duration: Duration(milliseconds: 3000),
              icon: Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              message: 'Este produto foi removido dos seus favoritos',
            )..show(context);
          }
        },
      ),
    );
  }
}
