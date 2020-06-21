import 'package:desafio_mobile/app/shared/components/default_bottombar/components/bottombar_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DefaultBottombarWidget extends StatelessWidget {
  final PageController pageController;

  const DefaultBottombarWidget({Key key, this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: 80,
          color: Theme.of(context).primaryColorDark,
          padding: const EdgeInsets.fromLTRB(25, 10, 10, 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomBarButtonWidget(
                iconSize: 24,
                fontSize: 14,
                icon: Icons.home,
                label: "Home",
                controller: pageController,
                page: 0,
                context: context,
              ),
              BottomBarButtonWidget(
                iconSize: 24,
                fontSize: 14,
                icon: Icons.search,
                label: "Search",
                controller: pageController,
                page: 1,
                context: context,
              ),
              BottomBarButtonWidget(
                iconSize: 24,
                fontSize: 14,
                icon: Icons.shopping_cart,
                label: "Cart",
                controller: pageController,
                page: 2,
                context: context,
              ),
              BottomBarButtonWidget(
                iconSize: 24,
                fontSize: 14,
                icon: Icons.person_outline,
                label: "Profile",
                controller: pageController,
                page: 3,
                context: context,
              ),
              BottomBarButtonWidget(
                iconSize: 24,
                fontSize: 14,
                icon: Icons.menu,
                label: "More",
                controller: pageController,
                page: 4,
                context: context,
              )
            ],
          ),
        );
      });
    });
  }
}
