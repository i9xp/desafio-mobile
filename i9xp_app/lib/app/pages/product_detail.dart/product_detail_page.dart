import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:i9xp_app/app/pages/product_detail.dart/components/box_product_detail.dart';
import 'package:i9xp_app/app/shared/controllers/app_controller.dart';
import 'package:i9xp_services_pkg/i9xp_services_pkg.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel product;

  const ProductDetailPage({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(
            leading: GestureDetector(
                child: IconButton(
                    icon: Icon(
                      CupertinoIcons.back,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      app.nav.pop();
                    })),
            actions: <Widget>[
              Observer(builder: (_) {
                return AppBadge(
                  icon: AppImage.cart,
                  counter: app.model.cartProductLength,
                  iconSize: 40,
                  onTap: () {
                    app.nav.pop();
                    app.model.setTabViewIndex(2);
                  },
                );
              })
            ],
            title: Column(children: [
              Text(
                product.name,
                style: BUTTON,
                maxLines: 2,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    '\$${product.price}',
                    style: BUTTON,
                  ),
                  HSpace(PADDING_S),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(PADDING_S),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: PADDING_XXXS, horizontal: PADDING_S),
                      color: Theme.of(context).primaryColor,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image(
                            image: AppImage.star,
                          ),
                          HSpace(PADDING_XXS),
                          Text(
                            '${product.rate}',
                            style: BODY2,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  VSpace(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: PADDING_XS,
                        height: PADDING_XS,
                        decoration: BoxDecoration(
                            color: WHITE.withOpacity(.5),
                            shape: BoxShape.circle),
                      ),
                      HSpace(PADDING_XXS),
                      Container(
                        width: PADDING_XS,
                        height: PADDING_XS,
                        decoration:
                            BoxDecoration(color: WHITE, shape: BoxShape.circle),
                      ),
                      HSpace(PADDING_XXS),
                      Container(
                        width: PADDING_XS,
                        height: PADDING_XS,
                        decoration: BoxDecoration(
                            color: WHITE.withOpacity(.5),
                            shape: BoxShape.circle),
                      )
                    ],
                  ),
                  VSpace(),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .2,
                        vertical: PADDING),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Hero(
                          tag: product.image,
                          child: Image.network(product.image)),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Product', style: BODY1.copyWith(color: WHITE)),
                      HSpace(),
                      Chip(
                        label: Text('Details',
                            style: BODY1.copyWith(color: GREY_4)),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      HSpace(),
                      Text('Preview', style: BODY1.copyWith(color: WHITE)),
                      HSpace(),
                    ],
                  ),
                  BoxProductDetail(
                    product: product,
                  )
                ],
              ),
            ),
          ),
          CustomBottomBar(
            children: <Widget>[
              Expanded(
                child: AppButton(
                  label: 'SHARE THIS',
                  backgroundColor: WHITE,
                  imageIcon: AppImage.up,
                ),
              ),
              HSpace(PADDING_S),
              Expanded(
                child: AppButton(
                  label: 'ADD TO CART',
                  onTap: () {
                    app.model.addToCart(CartItemModel(product));
                    app.nav.pop();
                    app.model.setTabViewIndex(2);
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
