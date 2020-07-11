import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/styles.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    Key key,
    this.brand,
    this.condition,
    this.category,
    this.sku,
    this.material,
    this.fiting,
  }) : super(key: key);

  final String brand;
  final String condition;
  final String category;
  final String sku;
  final String material;
  final String fiting;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            InfoRow(
              firstTitle: "BRAND",
              firstContent: brand,
              secondTitle: "SKU",
              secondContent: sku,
            ),
            SizedBox(height: 20),
            InfoRow(
              firstTitle: "CONDITION",
              firstContent: condition,
              secondTitle: "MATERIAL",
              secondContent: material,
            ),
            SizedBox(height: 20),
            InfoRow(
              firstTitle: "CATEGORY",
              firstContent: category,
              secondTitle: "FITING",
              secondContent: fiting,
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    Key key,
    this.firstTitle,
    this.secondTitle,
    this.firstContent,
    this.secondContent,
  }) : super(key: key);

  final String firstTitle;
  final String secondTitle;
  final String firstContent;
  final String secondContent;

  bool get hasSecondInfo => secondTitle != null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Info(
          title: firstTitle,
          content: firstContent,
        ),
        if (hasSecondInfo)
          Info(
            title: secondTitle,
            content: secondContent,
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
      ],
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    Key key,
    @required this.title,
    @required this.content,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  final String title;
  final String content;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(title, style: AppStyles.PRODUCT_INFO_TITLE),
        SizedBox(height: 5),
        Text(content, style: AppStyles.PRODUCT_INFO_CONTENT),
      ],
    );
  }
}
