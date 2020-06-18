
import 'package:flutter/material.dart';
import 'package:testeapp/src/models/BottomNavItemModel.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/widgets/CustomBottomNavigation.dart';
import 'package:testeapp/src/widgets/SvgItem.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<BottomNavItemModel> list = [
    BottomNavItemModel(
      nome: "Home",
      icone: Icons.home
    ),
    BottomNavItemModel(
        nome: "Search",
        icone: Icons.search
    ),
    BottomNavItemModel(
        nome: "Cart",
        icone: Icons.add_shopping_cart
    ),
    BottomNavItemModel(
        nome: "Profile",
        icone: Icons.person_outline
    ),
    BottomNavItemModel(
        nome: "More",
        icone: Icons.menu
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.grayDarker,
        title: SVGItem(
          assetName: 'assets/logo.svg',
        )
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(
        itens: list,
      )
    );
  }
}