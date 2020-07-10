import 'package:challenge/app/screens/cart/cart.dart';
import 'package:challenge/app/screens/home/widgets/contentHome.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPage = 0;
  final _pageOptions = [
    ContentHome(),
    Container(
      color: Colors.red,
    ),
    CartScreen(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.amber,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Widget bottomNavigation() {
      return BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Color(0xff12912),
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        currentIndex: _selectedPage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 11),
            ),
            backgroundColor: Color(0xff2E3746),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Search',
              style: TextStyle(fontSize: 11),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text(
              'Cart',
              style: TextStyle(fontSize: 11),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 11),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text(
              'More',
              style: TextStyle(fontSize: 11),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
