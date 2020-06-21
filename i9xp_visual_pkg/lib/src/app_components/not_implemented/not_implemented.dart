import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';
import 'package:i9xp_visual_pkg/src/app_assets/app_images/app_image.dart';
import 'package:i9xp_visual_pkg/src/app_components/spacers/vspace.dart';

class NotImplemented extends StatelessWidget {

  final String label;
  
  const NotImplemented([this.label]);
  
  @override
  Widget build(BuildContext context) {

    return Container(
    padding: EdgeInsets.all(PADDING),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image(image: AppImage.logo, height: 60, width: 60, fit: BoxFit.contain,),
        VSpace(),
        Text(label ?? 'Oops!\nFuncionalidade Indisponível.', style: TITLE, textAlign: TextAlign.center,)
      ]
    ),
        );
  }
}