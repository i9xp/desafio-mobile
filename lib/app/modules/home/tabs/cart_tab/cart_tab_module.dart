import 'package:desafio_mobile/app/modules/home/tabs/cart_tab/cart_tab_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mobile/app/modules/home/tabs/cart_tab/cart_tab_page.dart';

import '../../../../app_module.dart';

class CartTabModule extends ModuleWidget {
  final PageController pageController;
  final appController;

  CartTabModule({this.appController, this.pageController});

  @override
  List<Bloc> get blocs => [
        Bloc((i) => CartTabController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view =>
      CartTabPage(pageController: pageController, appController: appController);

  static Inject get to => Inject<CartTabModule>.of();
}
