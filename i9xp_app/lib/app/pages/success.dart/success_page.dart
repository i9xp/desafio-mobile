import 'package:flutter/material.dart';
import 'package:i9xp_app/app/shared/controllers/app_controller.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double iconSize = MediaQuery.of(context).size.width / 4;
    return Scaffold(
        appBar: PreferredSize(
            child: CustomAppBar(
              actions: <Widget>[
                IconButton(
                    icon: Image(image: AppImage.close), onPressed: app.nav.pop)
              ],
            ),
            preferredSize: APPBAR_HEIGHT),
        body: Container(
          margin: EdgeInsets.only(bottom: APPBAR_HEIGHT.height),
          padding: const EdgeInsets.all(PADDING),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AppImage.check,
                width: iconSize,
                height: iconSize,
                fit: BoxFit.contain,
              ),
              VSpace(),
              Text(
                'ORDER PLACED!',
                style: TITLE,
              ),
              VSpace(),
              Text(
                'Your order was placed successfully. For more details, check All My Orders page under Profile tab',
                style: DISPLAY3.copyWith(color: WHITE),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
