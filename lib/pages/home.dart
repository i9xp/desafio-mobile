import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/features/category/bloc/category_bloc.dart';
import 'package:marketplace/features/dashboard/bloc/dashboard_bloc.dart';

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
            margin: EdgeInsets.fromLTRB(25, 30, 25, 0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 36,
                  padding: EdgeInsets.only(bottom: 10),
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
                              width: 25,
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
                        shortcutsCategory.add(Container(
                          width: ((MediaQuery.of(context).size.width - 90) / 4),
                          height:
                              ((MediaQuery.of(context).size.width - 90) / 4) +
                                  24,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Image.network(cat.imageURL),
                              ),
                              Text(cat.name),
                            ],
                          ),
                        ));

                        shortcutsCategory.add(
                          SizedBox(
                            width: 10,
                          ),
                        );
                      });

                      if (state.categories.length >= 3) {
                        shortcutsCategory.add(Container(
                          width: ((MediaQuery.of(context).size.width - 90) / 4),
                          height:
                              ((MediaQuery.of(context).size.width - 90) / 4) +
                                  24,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/button-next.png'),
                                ),
                              ),
                              Text('See All'),
                            ],
                          ),
                        ));
                      }

                      return Container(
                        child: Row(
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
                      return Container();
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
