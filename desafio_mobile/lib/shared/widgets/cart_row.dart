import 'package:desafio_mobile/models/cart_item_model.dart';
import 'package:desafio_mobile/shared/utils/colors_util.dart';
import 'package:flutter/material.dart';

class CartRow extends StatefulWidget {
  CartItemModel item;

  CartRow({this.item});

  @override
  _CartRowState createState() => _CartRowState();
}

class _CartRowState extends State<CartRow> {
  ColorsUtil colorsUtil = ColorsUtil();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        child: Row(
          children: [
            Container(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: Image.asset(
                  widget.item.img,
                  scale: 3,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.item.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(widget.item.subTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w300)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("\$${widget.item.price.toStringAsFixed(2)}",
                      style: TextStyle(
                          color: colorsUtil.seeAllIcon,
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        child: Center(
                          child: Icon(
                            Icons.do_not_disturb_on,
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        widget.item.qtd.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        child: Center(
                          child: Icon(
                            Icons.add_circle,
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                    height: 3,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
