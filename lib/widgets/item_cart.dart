import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/message/bloc/message_bloc.dart';
import 'package:marketplace/features/notification/bloc/notification_bloc.dart';

class ItemCart extends StatelessWidget {
  Widget illustration;
  String title;
  String subtitle;
  double price;
  int quantity;
  bool lastItem;

  ItemCart(
      {this.illustration,
      this.title,
      this.subtitle,
      this.price,
      this.quantity,
      this.lastItem = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            child: illustration,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 3,
                ),
                Text(subtitle,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
                SizedBox(
                  height: 10,
                ),
                Text('\$${price.toStringAsFixed(2)}',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFFF9C705),
                        fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(52, 255, 255, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(19),
                          ),
                          border: Border.all(width: 0, style: BorderStyle.none),
                        ),
                        child: Icon(
                          Icons.remove,
                          size: 16,
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text('${quantity}'),
                      SizedBox(
                        width: 13,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(52, 255, 255, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(19),
                          ),
                          border: Border.all(width: 0, style: BorderStyle.none),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                lastItem
                    ? Container()
                    : Divider(
                        height: 1,
                        color: Color(0xFF727C8E),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
