import 'package:challenge/app/screens/product/product.dart';
import 'package:flutter/material.dart';

class ItensWidget extends StatelessWidget {
  final List<String> title = ['Ankle Boots', 'Backpack', 'Red Scorf'];
  final List<String> image = [
    'assets/img/ankle.png',
    'assets/img/backpack.png',
    'assets/img/redscorf.png',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
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
            padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
            child: Container(
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        image[index],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title[index],
                          style:
                              TextStyle(color: Color(0xff515C6F), fontSize: 12),
                        ),
                      ],
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
          ),
        );
      },
    );
  }
}
