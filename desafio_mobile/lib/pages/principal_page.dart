import 'package:desafio_mobile/shared/widgets/categories_itens.dart';
import 'package:desafio_mobile/shared/widgets/icon_badge.dart';
import 'package:desafio_mobile/shared/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../shared/utils/colors_util.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  ColorsUtil colors = ColorsUtil();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.bgColorHome,
        elevation: 0,
        title: Image.asset(
          "assets/images/logo.png",
          scale: 3,
        ),
        titleSpacing: 25,
        actions: <Widget>[
          IconButton(
              icon: IconBadge(
                icon: Icons.chat_bubble_outline,
                label: "5",
              ),
              onPressed: () {}),
          IconButton(
              icon: IconBadge(
                icon: Icons.notifications_none,
                label: "10",
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                colors.bgColorHome,
                colors.bgColorHomeBody,
                colors.bgColorHomeBody
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.25, 0.35, 1.0]),
        ),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: SectionTitle("Categories"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoriesItens(
                  imgUrl: "assets/images/clothes.png",
                  label: "Clothes",
                  colors: [
                    Color(0xFFFFAE4E),
                    Color(0xFFFF7676),
                  ],
                ),
                CategoriesItens(
                  imgUrl: "assets/images/beauty.png",
                  label: "Beauty",
                  colors: [
                    Color(0xFF4EFFF8),
                    Color(0xFF76BAFF),
                  ],
                ),
                CategoriesItens(
                  imgUrl: "assets/images/shoes.png",
                  label: "Shoes",
                  colors: [
                    Color(0xFFB4FF4E),
                    Color(0xFF2FC145),
                  ],
                ),
                CategoriesItens(
                  icon: Icons.arrow_forward_ios,
                  label: "See All",
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0xFFFFFFFF),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SectionTitle("Latest"),
            ),
          ],
        ),
      ),
    );
  }
}
