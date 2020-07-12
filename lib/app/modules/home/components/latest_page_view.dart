import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/assets.dart';

class LatestPageView extends StatelessWidget {
  const LatestPageView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView(
        controller: PageController(
          viewportFraction: 0.9,
          initialPage: 0,
        ),
        children: [
          LatestImage(image: AppAssets.BANNER_1),
          LatestImage(image: AppAssets.BANNER_2),
        ],
      ),
    );
  }
}

class LatestImage extends StatelessWidget {
  const LatestImage({
    Key key,
    this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
