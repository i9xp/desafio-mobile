import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_assets/app_images/app_image.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_colors/app_color.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_fonts/app_text_style.dart';

class ProductsCaroselHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: PADDING),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ProductCaroselHomeCard(
            title: 'Ankle Boots',
            amount: '\$49.99',
            image: AppImage.shoes,
          ),
          ProductCaroselHomeCard(
            title: 'Backpack',
            amount: '\$20.58',
            image: AppImage.backpack,
          ),
          ProductCaroselHomeCard(
            title: 'Red Scarf',
            amount: '\$11.00',
            image: AppImage.scarf,
          ),
        ],
      )
    );
  }
}
class ProductCaroselHomeCard extends StatelessWidget {

  final AssetImage image;
  final String title;
  final String amount;

  const ProductCaroselHomeCard({Key key, @required this.image, @required this.title, @required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 - (PADDING),
      child: AspectRatio(
        aspectRatio: 3/4,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(PADDING_XS),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(image: image),
                Text(title, style: DISPLAY5, maxLines: 2, overflow: TextOverflow.fade,),
                Text(amount, style: Theme.of(context).textTheme.overline.copyWith(color: GREY_4), maxLines: 2, overflow: TextOverflow.fade,),
              ],
            )
          ),
        ),
      ),
    );
  }
}