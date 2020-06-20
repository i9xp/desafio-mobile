import 'package:flutter/material.dart';
import 'package:i9xp_app/app/controllers/app_controller.dart';
import 'package:i9xp_app/app/utils/navigators/app_navigator.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class HomePage extends StatefulWidget {
  
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'HomePage',
              style: DISPLAY3,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => app.nav.pushNamed(AppRoutes.productDetail),
        tooltip: 'DetailPage',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}