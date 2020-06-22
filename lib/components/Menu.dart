import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i9xpapp/blocs/CartBloc.dart';
import 'package:i9xpapp/blocs/PagesBloc.dart';
import 'package:i9xpapp/pages/Cart.dart';
import 'package:i9xpapp/pages/Home.dart';
import 'package:provider/provider.dart';

import 'ItemMenu.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final pagesBloc = Provider.of<PagesBloc>(context);
    final cartBloc = Provider.of<CartBloc>(context);
    return Container(
      height: 49,
      color: Color.fromRGBO(46, 55, 70, 1),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  pagesBloc.setIndex(1);
                });
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: ItemMenu(
                icon: SvgPicture.asset(
                  'assets/icons/Home.svg',
                  height: 17,
                  width: 17,
                  color: pagesBloc.activeIndex == 1
                      ? Color.fromRGBO(255, 198, 0, 1)
                      : Colors.white,
                ),
                active: pagesBloc.activeIndex == 1 ? true : false,
                label: 'Home',
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                pagesBloc.setIndex(2);
              }),
              child: ItemMenu(
                icon: SvgPicture.asset(
                  'assets/icons/Search.svg',
                  height: 17,
                  width: 17,
                  color: pagesBloc.activeIndex == 2
                      ? Color.fromRGBO(255, 198, 0, 1)
                      : Colors.white,
                ),
                active: pagesBloc.activeIndex == 2 ? true : false,
                label: 'Search',
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pagesBloc.setIndex(3);
                });
                cartBloc.getTotal();
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              },
              child: ItemMenu(
                icon: SvgPicture.asset(
                  'assets/icons/Cart.svg',
                  height: 17,
                  width: 17,
                  color: pagesBloc.activeIndex == 3
                      ? Color.fromRGBO(255, 198, 0, 1)
                      : Colors.white,
                ),
                active: pagesBloc.activeIndex == 3 ? true : false,
                label: 'Cart',
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                pagesBloc.setIndex(4);
              }),
              child: ItemMenu(
                icon: SvgPicture.asset(
                  'assets/icons/Profile.svg',
                  height: 17,
                  width: 17,
                  color: pagesBloc.activeIndex == 4
                      ? Color.fromRGBO(255, 198, 0, 1)
                      : Colors.white,
                ),
                active: pagesBloc.activeIndex == 4 ? true : false,
                label: 'Profile',
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                pagesBloc.setIndex(5);
              }),
              child: ItemMenu(
                icon: Icon(
                  Icons.menu,
                  size: 18,
                  color: pagesBloc.activeIndex == 5
                      ? Color.fromRGBO(255, 198, 0, 1)
                      : Colors.white,
                ),
                active: pagesBloc.activeIndex == 5 ? true : false,
                label: 'More',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
