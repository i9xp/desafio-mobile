import 'package:flutter/material.dart';
import 'package:testeapp/src/models/BottomNavItemModel.dart';

class CustomBottomNavigation extends StatelessWidget {

  final List<BottomNavItemModel> itens;

  const CustomBottomNavigation({Key key, this.itens}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      decoration: BoxDecoration(
          color: colors.grayDarker
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [

        ],
      ),
    ),
  }
}
