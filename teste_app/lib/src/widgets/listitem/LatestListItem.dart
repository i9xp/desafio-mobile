import 'package:flutter/material.dart';
import 'package:testeapp/src/widgets/CustomActionButton.dart';
import 'package:testeapp/src/widgets/Text.dart';
import 'package:testeapp/src/values/colors.dart' as colors;

class LatestItemList extends StatelessWidget {

  final String buttonLabel;
  final String text;
  final String assets;

  const LatestItemList({Key key, this.buttonLabel, this.text, this.assets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:12.0
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  assets,
            )
          ),
        )
      )
    );
  }
}
