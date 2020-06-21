import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i9xp_services_pkg/i9xp_services_pkg.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_colors/app_color.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_fonts/app_text_style.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_widget/mobx_widget.dart';

class ProductsCaroselHome extends StatelessWidget {
  final ObservableFuture future;
  final Function(ProductModel) openDetail;

  const ProductsCaroselHome({Key key, @required this.future, @required this.openDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: PADDING),
        width: MediaQuery.of(context).size.width,
        child: ObserverFuture<ResponseStatus<List<ProductModel>>, String>(
            transition: BrazTransition(transition: BrazTransitionEnum.fade),
            observableFuture: () => future,
            onUnstarted: (_) => _Loading(),
            onPending: (_) => _Loading(),
            onError: (_, error) => Center(
                  child: Text(error ?? 'Ocorreu um erro.'),
                ),
            onData: (_, productResult) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ...?productResult?.data
                        ?.map((item) => ProductCaroselHomeCard(
                          openDetail: openDetail,
                              product: item,
                            ))
                        ?.toList()
                  ],
                )));
  }
}

class ProductCaroselHomeCard extends StatelessWidget {
  final ProductModel product;
  final Function(ProductModel) openDetail;

  const ProductCaroselHomeCard(
      {Key key, @required this.product, @required this.openDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 - (PADDING),
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: GestureDetector(
          onTap: () {
            openDetail(product);
          },
          child: Card(
            child: Container(
                padding: EdgeInsets.all(PADDING_XS),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(PADDING_XS),
                      child: Hero(
                          tag: product.image,
                          child: Image.network(product.image)),
                    ),
                    Text(
                      product.short,
                      style: DISPLAY5,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                    ),
                    Text(
                      '\$${product.price}',
                      style: Theme.of(context)
                          .textTheme
                          .overline
                          .copyWith(color: GREY_4),
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            color: Colors.black.withOpacity(.5),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(PADDING),
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }
}
