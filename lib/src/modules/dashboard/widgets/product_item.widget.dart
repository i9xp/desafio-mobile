import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafioi9xp/src/modules/dashboard/styles/dashboard.style.dart';
import 'package:flutter/material.dart';

class ProductItemListView extends StatelessWidget {
  String imageUrl;
  String title;
  String price;
  Function onPressed;

  ProductItemListView({
    @required this.imageUrl,
    @required this.title,
    @required this.price,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          width: 97,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 80,
                  child: Hero(
                    tag: imageUrl,
                    child: CachedNetworkImage(imageUrl: imageUrl),
                  ),
                ),
              ),
              Divider(height: 5, color: Colors.transparent),
              Text(
                title,
                maxLines: 1,
                style: DashboardStyle.PRODUCT_TITLE,
              ),
              Text(
                price,
                maxLines: 1,
                style: DashboardStyle.PRODUCT_PRICE,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
