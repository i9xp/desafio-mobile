import 'package:desafio_mobile/app/modules/home/tabs/cart_tab/cart_tab_module.dart';
import 'package:desafio_mobile/app/modules/home/tabs/home_tab/home_tab_module.dart';
import 'package:flutter/material.dart';

import '../../app_controller.dart';
import '../../app_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// PageController to navigate at the tabs
  PageController _pageController;

  /// Inside AppController we have our state menagement and logic layer
  final controller = AppModule.to.bloc<AppController>();

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: <Widget>[
        HomeTabModule(
          appController: controller,
          pageController: _pageController,
        ),
        Container(),
        CartTabModule(
          pageController: _pageController,
          appController: controller,
        ),
      ],
    );
  }
}
