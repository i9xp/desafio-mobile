import 'package:desafio_mobile/app/shared/components/background_gradient/background_gradient_widget.dart';
import 'package:desafio_mobile/app/shared/components/basic_structure/basic_structure_widget.dart';
import 'package:desafio_mobile/app/shared/components/default_appbar/default_appbar_widget.dart';
import 'package:flutter/material.dart';

class HomeTabPage extends StatefulWidget {
  final String title;
  const HomeTabPage({Key key, this.title = "HomeTab"}) : super(key: key);

  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppbarWidget(
          titleComponent: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              "imgs/logo.png",
              width: 52,
              height: 24,
              fit: BoxFit.contain,
            ),
          ),
          centerTitle: false,
        ),
        body: BasicStructureWidget(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(children: <Widget>[
                  Text("Categorias",
                      style: Theme.of(context).textTheme.headline1),
                ])
              ],
            ),
          ),
        ));
  }
}
