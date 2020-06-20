import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testeapp/src/bloc/CarrinhoBloc.dart';

class BlocProvider extends StatelessWidget {
  final Widget child;

  const BlocProvider({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => CarrinhoBloc(),)

      ],
      child: child,
    );
  }
}