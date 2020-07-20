import 'package:flutter/material.dart';

class HighLightsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          child: new Stack(
            children: <Widget>[
              Container(
                  height: 70.0,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: constraints.maxWidth * 1.0,
                  decoration: new BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: new BorderRadius.circular(8.0),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: Colors.black12,
                        blurRadius: 70.0,
                        offset: new Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Center(
                      child: Text(
                        'MAIS VENDIDOS',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              Container(
                margin: new EdgeInsets.only(left: 40, top: 2),
                alignment: FractionalOffset.centerLeft,
                child: new Image.network(
                  'https://cdn.icon-icons.com/icons2/1950/PNG/512/free-30-instagram-stories-icons87_122634.png',
                  height: 65,
                  width: 65,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
