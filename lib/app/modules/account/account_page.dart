import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'account_controller.dart';

class AccountPage extends StatefulWidget {
  final String title;
  const AccountPage({Key key, this.title = "Account"}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends ModularState<AccountPage, AccountController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
