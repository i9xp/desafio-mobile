import 'package:flutter/material.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class ActionNotification extends StatelessWidget {
  final Function action;
  final IconData icon;
  final int quantity;

  ActionNotification(this.icon, this.quantity, {this.action});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          IconButton(
            onPressed: this.action,
            icon: Icon(icon, size: 21, color: AppColors.white),
          ),
          Positioned(
            left: 4,
            bottom: 8,
            child: Container(
              width: 15,
              height: 15,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.mustard,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                this.quantity.toString(),
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
