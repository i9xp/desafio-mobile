import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/models/action_model.dart';

class AppbarHomeTitle extends StatelessWidget {
  final List<ActionModel> actions;
  final Widget leading;

  const AppbarHomeTitle({
    Key key,
    this.actions = const <ActionModel>[],
    this.leading,
  }) : super(key: key);

  bool get hasActions => actions.length > 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading ?? Container(),
        if (hasActions)
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _modelToWidget(),
            ),
          ),
      ],
    );
  }

  List<Widget> _modelToWidget() {
    return actions.fold(
      <Widget>[],
      (List<Widget> previousValue, element) {
        return previousValue
          ..addAll([
            AppAction(type: element.type, number: element.notifications),
            SizedBox(width: 20),
          ]);
      },
    ).toList()
      ..removeLast();
  }
}
