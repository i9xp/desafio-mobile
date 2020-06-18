import 'package:carousel_slider/carousel_slider.dart';
import 'package:desafio_mobile/shared/widgets/carousel_card.dart';
import 'package:desafio_mobile/shared/widgets/categories_itens.dart';
import 'package:desafio_mobile/shared/widgets/icon_badge.dart';
import 'package:desafio_mobile/shared/widgets/product_card.dart';
import 'package:desafio_mobile/shared/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../shared/utils/colors_util.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  ColorsUtil colors = ColorsUtil();

  List<Widget> banners = [
    CarouselCard("assets/images/banner_1_new.png"),
    CarouselCard("assets/images/banner_2_new.png"),
  ];

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
                imgUrl: "assets/images/messages.png",
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
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SectionTitle("Categories"),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoriesItens(
                    imgUrl: "assets/images/apparel.png",
                    label: "Clothes",
                  ),
                  CategoriesItens(
                    imgUrl: "assets/images/beauty.png",
                    label: "Beauty",
                  ),
                  CategoriesItens(
                    imgUrl: "assets/images/shoes.png",
                    label: "Shoes",
                  ),
                  CategoriesItens(
                    imgUrl: "assets/images/see_all.png",
                    label: "See All",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SectionTitle("Latest"),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            CarouselSlider(
              items: banners,
              options: CarouselOptions(
                autoPlay: false,
                aspectRatio: 2.0,
                enableInfiniteScroll: false,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    imgUrl: "assets/images/women_shoes.png",
                    label: "Ankle Boots",
                    price: 49.99,
                  ),
                  ProductCard(
                    imgUrl: "assets/images/backpack.png",
                    label: "Backpack",
                    price: 20.58,
                  ),
                  ProductCard(
                    imgUrl: "assets/images/scarf.png",
                    label: "Red Scarf",
                    price: 11.00,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
