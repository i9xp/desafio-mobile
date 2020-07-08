import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                  stops: [0.75, 1],
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
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: ((MediaQuery.of(context).size.width - 90) / 4),
                        height: ((MediaQuery.of(context).size.width - 90) / 4),
                        margin: EdgeInsets.all(5),
                        color: Colors.red,
                      ),
                      Container(
                        width: ((MediaQuery.of(context).size.width - 90) / 4),
                        height: ((MediaQuery.of(context).size.width - 90) / 4),
                        margin: EdgeInsets.all(5),
                        color: Colors.red,
                      ),
                      Container(
                        width: ((MediaQuery.of(context).size.width - 90) / 4),
                        height: ((MediaQuery.of(context).size.width - 90) / 4),
                        margin: EdgeInsets.all(5),
                        color: Colors.red,
                      ),
                      Container(
                        width: ((MediaQuery.of(context).size.width - 90) / 4),
                        height: ((MediaQuery.of(context).size.width - 90) / 4),
                        margin: EdgeInsets.all(5),
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    'Latest',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
