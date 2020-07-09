import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/styles.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  const CategoryTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.SECTION_TITLE,
    );
  }
}
