import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    final List<String> title = ['Apparel', 'Beauty', 'Shoes', 'See All'];
    final List<String> svgs = [
      'assets/img/apparel.svg',
      'assets/img/beauty.svg',
      'assets/img/seeall.svg',
      'assets/img/shoes.svg'
    ];

    return Container(
      width: _width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Categories',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 6,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            width: 85,
                            height: 85,
                            child: SvgPicture.asset(svgs[1]),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Text(
                          title[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
