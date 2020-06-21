import 'package:desafio_mobile/controllers/cart_controller.dart';
import 'package:desafio_mobile/controllers/home_controller.dart';
import 'package:desafio_mobile/controllers/product_detail_controller.dart';
import 'package:desafio_mobile/models/product_model.dart';
import 'package:desafio_mobile/shared/utils/colors_util.dart';
import 'package:desafio_mobile/shared/widgets/default_button.dart';
import 'package:desafio_mobile/shared/widgets/detail_row_option.dart';
import 'package:desafio_mobile/shared/widgets/icon_badge.dart';
import 'package:desafio_mobile/shared/widgets/row_details.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ProductDetailPage extends StatefulWidget {
  ProductModel model;

  ProductDetailPage({@required this.model});
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  ColorsUtil colorsUtil = ColorsUtil();
  ProductDetailController _controller;
  CartController cartController;
  HomeController homeController;

  @override
  void didChangeDependencies() {
    cartController = Provider.of<CartController>(context);
    homeController = Provider.of<HomeController>(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    _controller = ProductDetailController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorsUtil.bgColorHomeBody,
      appBar: AppBar(
        backgroundColor: colorsUtil.bgColorHomeBody,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: colorsUtil.seeAllIcon,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          widget.model.name,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: IconBadge(
                imgUrl: "assets/images/cart.png",
                label: "5",
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${widget.model.price.toStringAsFixed(2)}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: colorsUtil.seeAllIcon,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/star.png",
                        height: 10,
                        width: 10,
                      ),
                      Text(
                        widget.model.stars.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Carousel(
                images: [
                  Image.asset(widget.model.images[0]),
                  Image.asset(widget.model.images[1]),
                  Image.asset(widget.model.images[2]),
                ],
                dotColor: Color.fromRGBO(255, 255, 255, 0.2),
                dotSize: 5.0,
                dotSpacing: 12,
                dotIncreaseSize: 1.5,
                dotBgColor: Colors.transparent,
                autoplay: false,
                indicatorBgPadding: 5.0,
                dotPosition: DotPosition.topCenter,
              ),
            ),
            Observer(
              builder: (_) => DetailsRowOption(
                select: _controller.selectIndex,
                onTap: _controller.onTapped,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            RowDetails(
              left: "BRAND",
              right: "SKU",
              bold: true,
            ),
            RowDetails(
              left: widget.model.brand,
              right: widget.model.sku,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            RowDetails(
              left: "CONDITION",
              right: "MATERIAL",
              bold: true,
            ),
            RowDetails(
              left: widget.model.condition,
              right: widget.model.material,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            RowDetails(
              left: "CATEGORY",
              right: "FITTING",
              bold: true,
            ),
            RowDetails(
              left: widget.model.category,
              right: widget.model.fitting,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
            )
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(15),
        color: colorsUtil.bgColorHome,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DefaultButton(
              imgUrl: "assets/images/details_icon2.png",
              label: "SHARE THIS",
            ),
            GestureDetector(
              child: DefaultButton(
                imgUrl: "assets/images/details_icon1.png",
                label: "ADD TO CART",
                color: colorsUtil.seeAllIcon,
              ),
              onTap: (){
                cartController.addItem(widget.model);
                Navigator.of(context).pop();
                homeController.onItemTapped(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
