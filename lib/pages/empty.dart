import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyPage extends StatefulWidget {
  final scaffoldKey;

  EmptyPage({
    this.scaffoldKey,
  });

  @override
  State<StatefulWidget> createState() => _EmptyState();
}

class _EmptyState extends State<EmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Page under construction.'),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator()
        ],
      )),
    );
  }
}
