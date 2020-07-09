import 'package:flutter/material.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class TitleSection extends StatelessWidget {
  final String title;

  TitleSection(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        this.title,
        style: TextStyle(
          fontSize: 30,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
