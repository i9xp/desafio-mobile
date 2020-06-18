import 'package:desafio_mobile/pages/principal_page.dart';
import 'package:flutter/material.dart';
import '../shared/utils/colors_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ColorsUtil colors = ColorsUtil();

  List<Widget> _widgets = <Widget>[
    PrincipalPage(),
    Text("Search"),
    Text("Cart"),
    Text("Profile"),
    Text("More"),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/home.png",
                height: 24,
                width: 24,
                color: _selectedIndex == 0
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
                color: _selectedIndex == 2
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
                color: _selectedIndex == 3
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
        currentIndex: _selectedIndex,
        selectedItemColor: colors.selectedBottomBarIcon,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
