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
  final _pageController = PageController();

  /// Inside AppController we have our state menagement and logic layer
  final controller = AppModule.to.bloc<AppController>();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: <Widget>[HomeTabModule()],
    );
  }
}
