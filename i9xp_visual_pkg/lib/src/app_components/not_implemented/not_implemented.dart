import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';
import 'package:i9xp_visual_pkg/src/app_assets/app_images/app_image.dart';
import 'package:i9xp_visual_pkg/src/app_components/spacers/vspace.dart';

class NotImplemented extends StatelessWidget {
  
  const NotImplemented();
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(PADDING),
        color: GREY_4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AppImage.logo, height: 60, width: 60, fit: BoxFit.contain,),
            VSpace(),
            Text('Oops!\nFuncionalidade Indisponível.', style: TITLE, textAlign: TextAlign.center,)
          ]
        ),
      ),
    );
  }
}