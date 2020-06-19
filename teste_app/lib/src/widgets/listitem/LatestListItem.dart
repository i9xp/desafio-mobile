import 'package:flutter/material.dart';
import 'package:testeapp/src/widgets/CustomActionButton.dart';

class LatestItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:12.0
      ),
      child: Container(
        height: 184,
        width: 325,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(24))
        ),
        child: Row(
          children: [
            CustomActionButton()
          ],
        ),
      ),
    );
  }
}
