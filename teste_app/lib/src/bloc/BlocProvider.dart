import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlocProvider extends StatelessWidget {
  final Widget child;

  const BlocProvider({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

      ],
      child: child,
    );
  }
}