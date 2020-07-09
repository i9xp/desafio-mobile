import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/features/category/bloc/category_bloc.dart';
import 'package:marketplace/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:marketplace/widgets/card_campain.dart';
import 'package:marketplace/widgets/card_product_small.dart';
import 'package:marketplace/widgets/shortcut_category.dart';

class HomePage extends StatefulWidget {
  final scaffoldKey;

  HomePage({
    this.scaffoldKey,
  });

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 264,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.8, 1],
                  colors: [
                    Color(0xFF2B3340),
                    Color(0x002B3340),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 43,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  alignment: Alignment(-1, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('assets/images/logo-alpha.png'),
                        ),
                      ),
                      Container(
                        height: 25,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Image(
                                image: AssetImage(
                                    'assets/icons/icon-messages.png'),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Image(
                                image: AssetImage(
                                    'assets/icons/icon-notification.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Categories',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BlocBuilder<CategoryBloc, CategoryState>(
                  // ignore: missing_return
                  builder: (context, state) {
                    if (state is CategoryStateFailure) {
                      return Text(state.error);
                    } else if (state is CategoryStateLoaded) {
                      List<Widget> shortcutsCategory = [];

                      state.categories.forEach((cat) {
                        shortcutsCategory.add(ShotcutCategory(
                          title: cat.name,
                          illustration: Image.network(cat.imageURL),
                        ));
                      });

                      if (state.categories.length >= 3) {
                        shortcutsCategory.add(
                          ShotcutCategory(
                            title: 'See All',
                            illustration: Image(
                              image:
                                  AssetImage('assets/images/button-next.png'),
                            ),
                          ),
                        );
                      }

                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: shortcutsCategory,
                        ),
                      );
                    } else {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Loading...'),
                            SizedBox(
                              height: 20,
                            ),
                            CircularProgressIndicator()
                          ],
                        ),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Latest',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                BlocProvider<DashboardBloc>(
                  create: (context) =>
                      DashboardBloc()..add(DashboardEventFetch()),
                  child: BlocBuilder<DashboardBloc, DashboardState>(
                      // ignore: missing_return
                      builder: (context, stateDashboard) {
                    if (stateDashboard is DashboardStateLoaded) {
                      List<CardCampain> cards = [];

                      stateDashboard.dashboard.campains.forEach((campain) {
                        cards.add(CardCampain(
                          illustration: Image.network(campain.imageURL),
                        ));
                      });

                      List<CardProductSmall> products = [];

                      stateDashboard.dashboard.highlightsProducts
                          .forEach((product) {
                        products.add(CardProductSmall(
                          productId: product.productId,
                          illustration: Image.network(product.previewURL),
                          productName: product.name,
                          productValue: product.price,
                        ));
                      });

                      return Column(children: <Widget>[
                        CarouselSlider(
                          items: cards,
                          options: CarouselOptions(
                            height: MediaQuery.of(context).size.width *
                                    (356 / 609) -
                                20,
                            aspectRatio: 1218 / 712,
                            viewportFraction: 0.9,
                            // enlargeStrategy: CenterPageEnlargeStrategy.height,
                            initialPage: 0,
                            enableInfiniteScroll: false,
                            reverse: false,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: false,
                            // onPageChanged: callbackFunction,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: products,
                          ),
                        )
                      ]);
                    } else {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Loading...'),
                            SizedBox(
                              height: 20,
                            ),
                            CircularProgressIndicator()
                          ],
                        ),
                      );
                    }
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
