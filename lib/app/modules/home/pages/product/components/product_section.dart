import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/styles.dart';

class ProductSection extends StatelessWidget {
  final String description;

  const ProductSection({Key key, @required this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Center(
        child: Text(
          description,
          style: AppStyles.PRODUCT_INFO_CONTENT,
        ),
      ),
    );
  }
}
