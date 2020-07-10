import 'package:flutter/material.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class CartListItemButton extends StatelessWidget {
  final IconData icon;
  final Function action;
  CartListItemButton(
    this.icon,
    this.action,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 25,
      child: RawMaterialButton(
        onPressed: action,
        fillColor: AppColors.white.withOpacity(0.2),
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Icon(
          this.icon,
          size: 16,
          color: AppColors.white,
        ),
      ),
    );
  }
}
