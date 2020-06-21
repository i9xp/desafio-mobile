import 'package:desafio_mobile/controllers/home_controller.dart';
import 'package:desafio_mobile/pages/cart_page.dart';
import 'package:desafio_mobile/pages/principal_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../shared/utils/colors_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ColorsUtil colors = ColorsUtil();
  HomeController _controller;

  @override
  void didChangeDependencies(){
    _controller = Provider.of<HomeController>(context);

    super.didChangeDependencies();
  }

  List<Widget> _widgets = <Widget>[
    PrincipalPage(),
    Center(child: Text("Search")),
    CartPage(),
    Center(child: Text("Profile")),
    Center(child: Text("More")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) => _widgets.elementAt(_controller.selectedIndex)),
      bottomNavigationBar: Observer(
              builder: (_) => BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/home.png",
                  height: 24,
                  width: 24,
                  color: _controller.selectedIndex == 0
                      ? colors.selectedBottomBarIcon
                      : Colors.white,
                ),
                title: Text('Home'),
                backgroundColor: colors.bgColorHome),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: colors.bgColorHome),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/cart.png",
                  height: 24,
                  width: 24,
                  color: _controller.selectedIndex == 2
                      ? colors.selectedBottomBarIcon
                      : Colors.white,
                ),
                title: Text('Cart'),
                backgroundColor: colors.bgColorHome),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/profile.png",
                  height: 24,
                  width: 24,
                  color: _controller.selectedIndex == 3
                      ? colors.selectedBottomBarIcon
                      : Colors.white,
                ),
                title: Text('Profile'),
                backgroundColor: colors.bgColorHome),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                title: Text('More'),
                backgroundColor: colors.bgColorHome),
          ],
          currentIndex: _controller.selectedIndex,
          selectedItemColor: colors.selectedBottomBarIcon,
          showUnselectedLabels: true,
          onTap: _controller.onItemTapped,
        ),
      ),
    );
  }
}
