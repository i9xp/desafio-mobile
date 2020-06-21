import 'package:desafio_mobile/controllers/cart_controller.dart';
import 'package:desafio_mobile/pages/checkout_modal_page.dart';
import 'package:desafio_mobile/shared/utils/colors_util.dart';
import 'package:desafio_mobile/shared/widgets/cart_row.dart';
import 'package:desafio_mobile/shared/widgets/default_button.dart';
import 'package:desafio_mobile/shared/widgets/icon_badge.dart';
import 'package:desafio_mobile/shared/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  ColorsUtil colorsUtil = ColorsUtil();
  CartController controller;

  @override
  void didChangeDependencies() {
    controller = Provider.of<CartController>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorsUtil.bgColorHomeBody,
      appBar: AppBar(
        backgroundColor: colorsUtil.bgColorHomeBody,
        elevation: 0,
        bottom: AppBar(
          backgroundColor: colorsUtil.bgColorHomeBody,
          elevation: 0,
          title: SectionTitle("Cart"),
        ),
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
      body: Observer(builder: (_) {
        if (controller.itens.isEmpty) {
          return Center(
            child: Text(
              "No items",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          );
        } else {
          return ListView.builder(
              itemCount: controller.itens.length,
              itemBuilder: (context, index) {
                if (index == controller.itens.length)
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                  );
                return CartRow(item: controller.itens[index]);
              });
        }
      }),
      bottomSheet: Container(
        padding: EdgeInsets.all(15),
        color: colorsUtil.bgColorHomeBody,
        height: MediaQuery.of(context).size.height * 0.13,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: (MediaQuery.of(context).size.height * 0.005)),
                  child: Text("TOTAL",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: (MediaQuery.of(context).size.height * 0.005)),
                  child: Observer(
                    builder: (_) => Text(
                      "\$${controller.total.toStringAsFixed(2)}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(
                  "Free Domestic Shipping",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: DefaultButton(
                  color: colorsUtil.seeAllIcon,
                  imgUrl: "assets/images/details_icon1.png",
                  label: "CHECKOUT",
                ),
              ),
              onTap: () {
                controller.resetValues();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => CheckoutModalPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
