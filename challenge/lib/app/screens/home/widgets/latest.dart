import 'package:flutter/material.dart';

class LatestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Latest',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        Expanded(
          flex: 6,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Image.asset(
                        'assets/img/banner.png',
                        width: 300,
                        height: 200,
                      )),
                );
              }),
        ),
      ],
    );
  }
}
