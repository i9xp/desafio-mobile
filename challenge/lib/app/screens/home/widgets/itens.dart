import 'package:challenge/app/screens/product/product.dart';
import 'package:flutter/material.dart';

class ItensWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductScreen(),
                ));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/img/backpack.png',
                  ),
                  Text(
                    'BackPack',
                    style: TextStyle(color: Color(0xff515C6F), fontSize: 12),
                  ),
                  Text(
                    '\$49.99',
                    style: TextStyle(
                        color: Color(0xff515C6F),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
