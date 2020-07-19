import 'package:desafioi9xp/src/modules/home/views/home.view.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path;

class MyAppView extends StatelessWidget {
  Future _abrirCaixa() async {
    var dir = await path.getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    return await Hive.openBox('cart');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'i9XP E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        cardColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.primaryColor),
        ),
      ),
      home: FutureBuilder(
        future: _abrirCaixa(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.error != null) {
              return Scaffold(
                body: Center(
                  child: Text('Algo deu errado :('),
                ),
              );
            } else {
              return HomeView();
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      initialRoute: "/",
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
    );
  }
}
