import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';

class AppButton extends StatelessWidget {
  final String label;
  final AssetImage imageIcon;
  final Color backgroundColor;
  final Color fontColor;
  final VoidCallback onTap;

  final double height = 40;

  const AppButton(
      {Key key,
      this.label,
      this.imageIcon,
      this.backgroundColor,
      this.fontColor, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap?.call,
        child: Container(
          height: height,
          decoration: BoxDecoration(
              color: backgroundColor ?? Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(height / 2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: PADDING),
                child: Text(label ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: fontColor ?? GREY_3, fontSize: 14)),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: PADDING_S),
                  child: Image(image: imageIcon ?? AppImage.right)),
            ],
          ),
        ),
      ),
    );
  }
}
