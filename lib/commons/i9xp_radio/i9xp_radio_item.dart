import 'package:flutter/material.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class I9XPRadioItem extends StatelessWidget {

  final String value;
  final String label;
  final bool selected;
  final Function(String) onSelect;

  I9XPRadioItem(
    this.value,
    this.label,
    this.selected,
    this.onSelect,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: RawMaterialButton(
        onPressed: () => this.onSelect(this.value),
        padding: EdgeInsets.only(
          left: 5,
          top: 5,
          right: 5,
          bottom: 5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        fillColor: selected ? AppColors.yellow : Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        child: Text(
          label,
          style: TextStyle(
            color: selected ? AppColors.marineDark : AppColors.white,
            fontSize: 15,
            height: 1.4,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
