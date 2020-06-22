import 'package:flutter/material.dart';

class PagesBloc extends ChangeNotifier {
  int activeIndex = 1;

  setIndex(index) {
    activeIndex = index;
  }
}
