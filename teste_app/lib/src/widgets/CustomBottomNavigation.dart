import 'package:flutter/material.dart';
import 'package:testeapp/src/models/BottomNavItemModel.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/widgets/listitem/BottomNavListItem.dart';

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
        children: modelToWidget(itens)
      ),
    );
  }


  List<Widget> modelToWidget(List<BottomNavItemModel> models){
      List<Widget> list = [];
      models.map((e) {
        Widget listItem = BottomNavListItem(
          model: e,
        );
        list.add(listItem);
      }).toList();
      return list;
  }


}
