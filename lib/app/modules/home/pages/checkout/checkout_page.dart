import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'checkout_controller.dart';

class CheckoutPage extends StatefulWidget {
  final String title;
  const CheckoutPage({Key key, this.title = "Checkout"}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState
    extends ModularState<CheckoutPage, CheckoutController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PRODUCT_PAGE_BACKGROUND,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: AppAction(
              type: ActionType.CLOSE,
              onTap: () {
                Modular.to.pop();
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
