import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/styles.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({
    Key key,
    @required this.isSelected,
    @required this.label,
  }) : super(key: key);

  final bool isSelected;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Center(
        child: Text(
          label,
          style: isSelected
              ? AppStyles.PRODUCT_SELECTED_TAB_STYLE
              : AppStyles.PRODUCT_TAB_STYLE,
        ),
      ),
    );
  }
}
