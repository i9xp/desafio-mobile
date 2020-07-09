import 'package:flutter/material.dart';
import 'package:i9xp_commerce/core/enum/index.dart';

import 'i9xp_radio_item.dart';

class I9XPRadio extends StatelessWidget {
  final Enum options;
  final String selected;
  final Function(String) onSelect;
  I9XPRadio(this.options, this.selected, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: options.enums.entries
          .map(
            (entry) => I9XPRadioItem(
              entry.key,
              entry.value,
              selected == entry.key,
              onSelect,
            ),
          )
          .toList(),
    );
  }
}
