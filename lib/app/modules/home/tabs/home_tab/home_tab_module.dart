import 'package:desafio_mobile/app/modules/home/tabs/home_tab/home_tab_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mobile/app/modules/home/tabs/home_tab/home_tab_page.dart';

class HomeTabModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeTabController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomeTabPage();

  static Inject get to => Inject<HomeTabModule>.of();
}
