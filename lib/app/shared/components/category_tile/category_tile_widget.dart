import 'package:desafio_mobile/app/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryTileWidget extends StatelessWidget {
  final CategoryModel category;

  const CategoryTileWidget({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return category != null
        ? InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        category.img,
                        height: 65,
                        width: 65,
                      ),
                      SizedBox(height: 10),
                      Text(
                        category.title ?? "",
                        style: Theme.of(context).textTheme.subtitle1,
                      )
                    ])
              ],
            ),
          )
        : InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32)),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).buttonColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "See more",
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                )
              ],
            ),
          );
  }
}
