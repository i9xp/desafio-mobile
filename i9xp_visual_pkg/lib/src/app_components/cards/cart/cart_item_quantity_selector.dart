import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:i9xp_services_pkg/i9xp_services_pkg.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';
import 'package:i9xp_visual_pkg/src/app_components/buttons/circular_button.dart';

class CartItemQuantitySelector extends StatelessWidget {

  final CartItemModel model;

  const CartItemQuantitySelector({Key key, @required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircularButton(
                onTap: model.remove,
                icon: Icons.remove,
              ),
              HSpace(),
              Text(model.quantity.toString()),
              HSpace(),
              CircularButton(
                onTap:model.add,
                icon: Icons.add,
              ),
            ],
          )
        );
      }
    );
  }
}