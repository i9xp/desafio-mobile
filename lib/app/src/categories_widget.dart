import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Modular.to.pushNamed('/products/roupa');
            },
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.network(
                    'https://cdn.icon-icons.com/icons2/1950/PNG/512/free-30-instagram-stories-icons89_122637.png',
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Roupas",
                  style: Theme.of(context).textTheme.subtitle1,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Modular.to.pushNamed('/products/sapato');
            },
            child: Column(
              children: [
                Container(
                  child: Image.network(
                      'https://cdn.icon-icons.com/icons2/1950/PNG/512/free-30-instagram-stories-icons88_122635.png',
                      height: MediaQuery.of(context).size.height * 0.1),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sapato",
                  style: Theme.of(context).textTheme.subtitle1,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Modular.to.pushNamed('/products/esporte');
            },
            child: Column(
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.network(
                            'https://cdn.icon-icons.com/icons2/1950/PNG/512/free-30-instagram-stories-icons61_122609.png',
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.height * 0.1),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Esportes",
                        style: Theme.of(context).textTheme.subtitle1,
                      )
                    ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
