import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:i9xpapp/blocs/CartBloc.dart';
import 'package:i9xpapp/blocs/PagesBloc.dart';
import 'package:i9xpapp/pages/Home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<PagesBloc>.value(
            value: PagesBloc(),
          ),
          ChangeNotifierProvider<CartBloc>.value(
            value: CartBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'i9xp',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            backgroundColor: Colors.white,
          ),
          home: Home(),
        ),
      ),
    );
  }
}
