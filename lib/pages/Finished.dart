import 'package:flutter/material.dart';
import 'package:i9xpapp/blocs/PagesBloc.dart';
import 'package:i9xpapp/components/RoundedButton.dart';
import 'package:provider/provider.dart';

import 'Home.dart';

class Finished extends StatefulWidget {
  @override
  _FinishedState createState() => _FinishedState();
}

class _FinishedState extends State<Finished> {
  @override
  Widget build(BuildContext context) {
    final pagesBlocs = Provider.of<PagesBloc>(context);

    return Scaffold(
      body: Container(
        color: Color.fromRGBO(81, 92, 111, 1),
        child: Column(
          children: <Widget>[
            SizedBox(height: 21),
            GestureDetector(
              onTap: () {
                pagesBlocs.setIndex(1);
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(top: 36, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.close,
                      color: Color.fromRGBO(249, 199, 5, 1),
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 108),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 101,
                    width: 101,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(51),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.check,
                      color: Color.fromRGBO(249, 199, 5, 1),
                      size: 51,
                    ),
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  Text(
                    'Order Placed!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Neusa',
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    width: 252,
                    child: Text(
                      'Your order was placed successfully. For more details, check All My Orders page under Profile tab',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Neusa',
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RoundedButton(
                    action: () {
                      pagesBlocs.setIndex(1);
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    label: 'MY ORDERS',
                    background: Color.fromRGBO(249, 199, 5, 1),
                    icon: Icons.chevron_right,
                    iconBackground: Colors.white,
                    iconColor: Color.fromRGBO(249, 199, 5, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
