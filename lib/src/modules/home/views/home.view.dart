import 'package:badges/badges.dart';
import 'package:desafioi9xp/src/modules/cart/views/cart.view.dart';
import 'package:desafioi9xp/src/modules/dashboard/views/dashboard.view.dart';
import 'package:desafioi9xp/src/modules/home/controllers/home.controller.dart';
import 'package:desafioi9xp/src/modules/more/views/more.view.dart';
import 'package:desafioi9xp/src/modules/profile/views/profile.view.dart';
import 'package:desafioi9xp/src/modules/search/views/search.view.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:desafioi9xp/styles/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: Observer(
        builder: (BuildContext context) {
          return BottomNavigationBar(
            backgroundColor: AppColors.bgBottomNavBarColor,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white,
            items: buildBottomNavBarItems(),
            currentIndex: _homeController.homeStore.selectedIndex,
            selectedItemColor: AppColors.primaryColor,
            onTap: _homeController.onItemTapped,
          );
        },
      ),
      body: buildPageView(),
    );
  }

  Widget buildPageView() {
    return PageView(
      controller: _homeController.pageController,
      onPageChanged: _homeController.onItemTapped,
      children: <Widget>[
        DashboardView(),
        SearchView(),
        CartView(),
        ProfileView(),
        MoreView(),
      ],
    );
  }

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text(
          'Home',
          style: AppStyle.APPBAR_TITLE,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.zoom_in),
        title: Text(
          'Search',
          style: AppStyle.APPBAR_TITLE,
        ),
      ),
      BottomNavigationBarItem(
        icon: true
            ? Icon(Icons.shopping_cart)
            : Badge(
                badgeContent: Text("3", style: AppStyle.BADGE_NUMBER),
                child: Icon(Icons.shopping_cart),
              ),
        title: Text(
          'Cart',
          style: AppStyle.APPBAR_TITLE,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text(
          'Profile',
          style: AppStyle.APPBAR_TITLE,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        title: Text(
          'More',
          style: AppStyle.APPBAR_TITLE,
        ),
      ),
    ];
  }
}
