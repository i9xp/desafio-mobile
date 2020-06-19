import 'package:flutter/material.dart';
import 'package:testeapp/src/widgets/CustomActionButton.dart';
import 'package:testeapp/src/widgets/Text.dart';

class LatestItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:12.0
      ),
      child: Container(
        height: 144,
        width: 325,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(24))
        ),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 24,
                    top: 16,
                    bottom: 24
                  ),
                  width: 200,
                  child: CustomText(
                    size: TextSize.BANNER,
                    text: "For all your summer clothing needs",
                  ),
                ),
                CustomActionButton(
                  label: "label",
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}
