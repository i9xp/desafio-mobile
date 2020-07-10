import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class DataEmpty extends StatelessWidget {
  final String title;
  final String description;

  DataEmpty({
    this.title = "No content here",
    this.description = "Create new content to see it in this page",
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Feather.list,
                size: 62,
                color: AppColors.yellow,
              ),
            ),
            SizedBox(height: 37),
            Text(
              this.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 15),
            Text(
              this.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.4,
                color: AppColors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
