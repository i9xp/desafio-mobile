import 'package:flutter/material.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/widgets/Text.dart';

class ProductListIte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111,
      height: 145,
      decoration: BoxDecoration(
          color: colors.accentDark,
          borderRadius: BorderRadius.all(Radius.circular(24))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 111,
            height: 95,
            decoration: BoxDecoration(
                color: colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24)
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: CustomText(
              text: "Nome",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: CustomText(
              size: TextSize.SMALL,
              text: r"R$ 49.99",
            ),
          ),

        ],
      ),
    );
  }
}
