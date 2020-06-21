import 'package:flutter/material.dart';
import 'package:i9xp_services_pkg/i9xp_services_pkg.dart';
import 'package:i9xp_visual_pkg/src/app_components/cards/cart/cart_item_quantity_selector.dart';
import 'package:i9xp_visual_pkg/src/app_components/spacers/hspace.dart';
import 'package:i9xp_visual_pkg/src/app_components/spacers/vspace.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_colors/app_color.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';

class ProductCartItem extends StatelessWidget {

  final CartItemModel model;
  const ProductCartItem({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double iconSize = MediaQuery.of(context).size.width * .25;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PADDING_S, horizontal: PADDING),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: iconSize,
            height: iconSize,
            child: CircleAvatar(
                backgroundColor: WHITE,
                child: SizedBox(
                  width: iconSize * .7,
                  height: iconSize * .7,
                                child: Hero(
                      tag: model.product.image, 
                      child: Image.network(model.product.image)),
                )),
          ),
          HSpace(),
          Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(model.product.name ?? '', maxLines: 2, style: Theme.of(context).textTheme.body1),
                Text(model.product?.color ?? '', style: Theme.of(context).textTheme.display2),
                VSpace(PADDING_S),
                Text('\$${model?.product?.price ?? '--'}', style: Theme.of(context).textTheme.display3),
                VSpace(PADDING_S),
                CartItemQuantitySelector(model: model)
              ],
            ),
          ),
        ],
      ),
    );
  }
}