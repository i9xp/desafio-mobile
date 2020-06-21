import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:flutter/material.dart';

class ImgPartWidget extends StatelessWidget {
  final ProductModel productModel;

  const ImgPartWidget({Key key, this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ///Here would be a carousel with more photos
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: 300,
          height: 206,
          child: Center(child: Image.network(productModel.img)),
        ),

        ///Mock of a pageview
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Product",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontSize: 22)),
            SizedBox(width: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Theme.of(context).buttonColor,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text("Details",
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontSize: 22, color: Theme.of(context).primaryColorDark)),
            ),
            SizedBox(width: 20),
            Text("Reviews",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontSize: 20)),
          ],
        ),
        Container()
      ],
    );
  }
}
