import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/pages/product/models/bottom_button_type.dart';
import 'package:i9xp/app/shared/constants/assets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomButton extends StatefulWidget {
  const BottomButton({
    Key key,
    @required this.type,
    @required this.label,
    this.labelStyle,
    this.color,
    this.onTap,
  }) : super(key: key);

  final BottomButtonType type;
  final String label;
  final TextStyle labelStyle;
  final Color color;
  final Function onTap;

  @override
  _BottomButtonState createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  final assets = {
    BottomButtonType.SHARE: AppAssets.ICON_UP,
    BottomButtonType.ADD_TO_CART: AppAssets.ICON_RIGHT,
  };

  String get asset => assets[widget.type];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.color ?? Colors.white,
      borderRadius: BorderRadius.circular(23),
      child: InkWell(
        borderRadius: BorderRadius.circular(23),
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(),
          width: 165.w,
          height: 46.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Center(
                child: Text(
                  widget.label,
                  style: widget.labelStyle,
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(right: 8.2),
                child: Image.asset(asset),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
