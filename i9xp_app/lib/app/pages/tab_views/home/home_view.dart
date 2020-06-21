import 'package:flutter/material.dart';
import 'package:i9xp_app/app/shared/controllers/app_controller.dart';
import 'package:i9xp_app/app/utils/navigators/app_navigator.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Categories(),
            LatestWidget(),
            ProductsCaroselHome(
              future: app.model.productsFuture,
              openDetail: (product) => {
                app.nav.pushNamed(AppRoutes.productDetail, arguments: product)
              },
            ),
            VSpace()
          ],
        ),
    );
  }
}