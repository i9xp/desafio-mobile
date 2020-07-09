import 'package:flutter/material.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.title,
      style: TextStyle(
        fontSize: 30,
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
