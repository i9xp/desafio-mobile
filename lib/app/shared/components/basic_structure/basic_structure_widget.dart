import 'package:desafio_mobile/app/shared/components/background_gradient/background_gradient_widget.dart';
import 'package:flutter/material.dart';

class BasicStructureWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const BasicStructureWidget(
      {Key key,
      this.padding = const EdgeInsets.symmetric(horizontal: 5),
      @required this.child})
      : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Stack(
        children: <Widget>[
          BackgroundGradientWidget(),
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraint.maxHeight,
                minWidth: constraint.maxWidth,
              ),
              child: Padding(padding: padding, child: child),
            ),
          ),
        ],
      );
    });
  }
}
