import 'package:desafio_mobile/app/modules/home/home_module.dart';
import 'package:desafio_mobile/app/shared/components/basic_structure/basic_structure_widget.dart';
import 'package:desafio_mobile/app/shared/components/default_icon_button/default_icon_button_widget.dart';
import 'package:flutter/material.dart';

class CompletedOrder extends StatelessWidget {
  const CompletedOrder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColorDark,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close, color: Theme.of(context).buttonColor),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ]),
      body: BasicStructureWidget(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(128),
                  color: Theme.of(context).accentColor,
                ),
                child: Icon(
                  Icons.done,
                  size: 100,
                  color: Theme.of(context).buttonColor,
                ),
              ),
              SizedBox(height: 20),
              Text("Order Placed",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(fontSize: 45)),
              SizedBox(height: 10),
              Text(
                "Your order was placed successfully. For more details, check All My Orders page under Profile tab",
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    .copyWith(fontSize: 26, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              DefaultIconButtonWidget(
                text: "My Orders",
                onTap: () {},
                textColor: Theme.of(context).primaryColor,
                backgroundColor: Theme.of(context).buttonColor,
                width: MediaQuery.of(context).size.width / 2 - 30,
                icon: Icons.arrow_forward_ios,
                iconColor: Theme.of(context).buttonColor,
                fontSize: 22,
                iconBackgroundColor: Theme.of(context).accentColor,
                iconSize: 26,
              )
            ],
          )),
    );
  }
}
