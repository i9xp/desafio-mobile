import 'package:desafioi9xp/src/modules/dashboard/controllers/dashboard.controller.dart';
import 'package:desafioi9xp/src/modules/dashboard/widgets/product_item.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shimmer/shimmer.dart';

class Products extends StatefulWidget {
  DashboardController _dashboardController;

  Products(this._dashboardController);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Wrap(
        spacing: 4.0,
        runSpacing: 4.0,
        direction: Axis.horizontal,
        children: [
          Observer(
            builder: (context) {
              final list = widget._dashboardController.dashboardStore.listProducts;
              return list == null
                  ? _loadingWidgets()
                  : GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        final item = list[index];
                        return ProductItemListView(
                          imageUrl: item.images[0],
                          title: item.name,
                          price: "\$${item.price}",
                          onPressed: () {
                            Modular.to.pushNamed('/product', arguments: item);
                          },
                        );
                      },
                    );
            },
          ),
        ],
      ),
    );
  }

  Widget _loadingWidgets() {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.75,
      ),
      itemCount: 3,
      itemBuilder: (context, index) {
        return loadingCard();
      },
    );
  }

  Widget loadingCard() {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        width: 97,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Opacity(
              opacity: 0.25,
              child: Shimmer.fromColors(
                baseColor: Colors.white,
                highlightColor: Colors.grey,
                child: Container(
                  color: Colors.white,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            SizedBox(height: 3),
            Opacity(
              opacity: 0.25,
              child: Shimmer.fromColors(
                baseColor: Colors.white54,
                highlightColor: Colors.grey,
                child: Container(
                  color: Colors.white,
                  height: 10,
                  width: 60,
                ),
              ),
            ),
            SizedBox(height: 3),
            Opacity(
              opacity: 0.25,
              child: Shimmer.fromColors(
                baseColor: Colors.white,
                highlightColor: Colors.grey,
                child: Container(
                  color: Colors.white,
                  height: 10,
                  width: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
