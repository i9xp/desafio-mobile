
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:testeapp/src/models/BottomNavItemModel.dart';
import 'package:testeapp/src/pages/home/home_page_widget.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/widgets/CustomBottomNavigation.dart';
import 'package:testeapp/src/widgets/SvgItem.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomePageWidget{

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
    return Platform.isIOS ?
        SafeArea(
          child: homeBody(),
        )
        : homeBody();
  }

  Widget homeBody(){
    return Scaffold(
        backgroundColor: colors.gray,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: colors.grayDarker,
            centerTitle: false,
            title: Image.asset(
                "assets/logo.png",
              height: 30,
            ),
          actions: [
            IconButton(
              icon: Icon(Icons.message,color: colors.white,),
            ),
            IconButton(
              icon: Icon(Icons.add_alert,color: colors.white,),
            )
          ],
        ),
        body: Flex(
          direction: Axis.vertical,
          children: [
            homeListaDeCategorias(
                context: context
            ),
            homeListLatest(
                context: context
            ),
            homeLastItens(
                context: context
            )
          ],
        ),
        bottomNavigationBar: CustomBottomNavigation(
          itens: list,
        )
    );
  }
}