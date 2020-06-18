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
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: colors.bgColorHome
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            backgroundColor: colors.bgColorHome
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            backgroundColor: colors.bgColorHome
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
            backgroundColor: colors.bgColorHome
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('More'),
            backgroundColor: colors.bgColorHome
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: colors.selectedBottomBarIcon,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}

