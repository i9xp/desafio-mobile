import 'package:flutter/material.dart';

class NavBottomItemModel {
  NavBottomItemModel(this.icon, this.label);

  IconData icon;
  setIcon(IconData value) => icon = value;

  String label;
  setLabel(String value) => label = value;
}
