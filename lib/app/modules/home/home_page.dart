import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/components/logo_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
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
    ScreenUtil.init(width: 375, height: 667, allowFontScaling: false);
  }

  @override
  Widget build(BuildContext context) {
    _initScreenUtil();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Logo(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppAction(type: ActionType.MESSAGES, number: 5),
                  SizedBox(width: 20),
                  AppAction(type: ActionType.NOTIFICATIONS, number: 10),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
