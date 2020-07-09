import 'package:flutter/material.dart';

Widget bottomNavigationHome() {
  return BottomNavigationBar(
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
