import 'package:flutter/material.dart';
import '../shared/utils/colors_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ColorsUtil colors = ColorsUtil();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.bgColorHome,
        elevation: 0,
        title: Image.asset(
          "assets/images/logo.png",
          scale: 3,
        ),
        titleSpacing: 25,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.message), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications_none), onPressed: () {}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                colors.bgColorHome,
                colors.bgColorHomeBody,
                colors.bgColorHomeBody
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.25, 0.35, 1.0]),
        ),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Categories',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
