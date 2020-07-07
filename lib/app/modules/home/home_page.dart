import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/logo_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  void _initScreenUtil() {
    ScreenUtil.init(width: 667, height: 375, allowFontScaling: false);
  }

  @override
  Widget build(BuildContext context) {
    _initScreenUtil();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Logo(),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
