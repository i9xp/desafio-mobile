import 'package:desafioi9xp/src/modules/home/stores/home.store.dart';
import 'package:flutter/material.dart';

class HomeController {
  final HomeStore homeStore;

  HomeController(this.homeStore);

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void onItemTapped(int index) {
    homeStore.setSelectedIndex(index);
    pageController.jumpToPage(index);
  }
}
