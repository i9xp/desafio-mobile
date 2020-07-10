import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/pages/cart.dart';
import 'package:marketplace/pages/empty.dart';
import 'package:marketplace/pages/home.dart';
import 'package:marketplace/pages/product.dart';
import 'package:marketplace/utils/theme.dart';

import 'features/category/bloc/category_bloc.dart';
import 'features/message/bloc/message_bloc.dart';
import 'features/notification/bloc/notification_bloc.dart';

void main() => runApp(I9XPApp());

class I9XPApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I9XP - Marketplace',
      debugShowCheckedModeBanner: false,
      theme: I9XPTheme().theme,
      home: MarketplacePage(),
    );
  }
}

class MarketplacePage extends StatefulWidget {
  MarketplacePage();

  @override
  _MarketplaceState createState() => _MarketplaceState();
}

class _MarketplaceState extends State<MarketplacePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    EmptyPage(),
    CartPage(),
    EmptyPage(),
    EmptyPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryBloc>(
          create: (context) {
            return CategoryBloc()..add(CategoryEventFetch());
          },
        ),
        BlocProvider<MessageBloc>(
          create: (context) {
            return MessageBloc()..add(MessageEventFetch());
          },
        ),
        BlocProvider<NotificationBloc>(
          create: (context) {
            return NotificationBloc()..add(NotificationEventFetch());
          },
        ),
      ],
      child: BlocBuilder<CategoryBloc, CategoryState>(
        // ignore: missing_return
        builder: (context, state) {
          return Scaffold(
            body: _children[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xFF2E3746),
              onTap: onTabTapped,
              currentIndex: _currentIndex,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedItemColor: Color(0xFFF9C705),
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/icon-home.svg",
                    color:
                        _currentIndex == 0 ? Color(0xFFF9C705) : Colors.white,
                  ),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/icon-search.svg",
                    color:
                        _currentIndex == 1 ? Color(0xFFF9C705) : Colors.white,
                  ),
                  title: new Text('Search'),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/icon-cart.svg",
                    color:
                        _currentIndex == 2 ? Color(0xFFF9C705) : Colors.white,
                  ),
                  title: new Text('Cart'),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/icon-profile.svg",
                    color:
                        _currentIndex == 3 ? Color(0xFFF9C705) : Colors.white,
                  ),
                  title: new Text('Profile'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.dehaze,
                  ),
                  title: new Text('More'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
