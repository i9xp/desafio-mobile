import 'package:flutter/material.dart';

class NavFade<T> extends PageRouteBuilder<T> {
  final Widget page;

  NavFade({@required this.page})
      : super(
    pageBuilder: (context, animation1, animation2) => page,
    transitionsBuilder: (context, animation1, animation2, child) {
      return FadeTransition(opacity: animation1, child: child);
    },
  );
}