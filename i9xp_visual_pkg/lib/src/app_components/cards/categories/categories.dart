import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_assets/app_images/app_image.dart';
import 'package:i9xp_visual_pkg/src/app_components/spacers/vspace.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_colors/app_color.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_fonts/app_text_style.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [GREY_4, Colors.transparent],
              stops: [.7, .95])),
      child: Container(
        padding: EdgeInsets.only(
            left: PADDING, right: PADDING, top: PADDING, bottom: PADDING_XL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: PADDING_S),
              child: Text('Categories', style: TITLE),
            ),
            VSpace(),
            CategoriesCarousel()
          ],
        ),
      ),
    );
  }
}

class CategoriesCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PADDING_XS),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CategoriesCarouselIcon(
            image: AppImage.apparel,
            label: 'Apparel',
            action: () => debugPrint('Apparel'),
          ),
          CategoriesCarouselIcon(
            image: AppImage.beautyIcon,
            label: 'Beauty',
            action: () => debugPrint('Beauty'),
          ),
          CategoriesCarouselIcon(
            image: AppImage.shoesIcon,
            label: 'Shoes',
            action: () => debugPrint('Shoes'),
          ),
          CategoriesCarouselIcon(
            image: AppImage.seeAllIcon,
            label: 'See All',
            action: () => debugPrint('See All'),
          ),
        ],
      ),
    );
  }
}

class CategoriesCarouselIcon extends StatelessWidget {
  final String label;
  final AssetImage image;
  final VoidCallback action;

  const CategoriesCarouselIcon({Key key, this.label, this.image, this.action})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double size =
        (MediaQuery.of(context).size.width / 4) - (PADDING_S * 4);

    return GestureDetector(
      onTap: action?.call,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            image: image,
            fit: BoxFit.contain,
            width: size,
            height: size,
          ),
          VSpace(PADDING_S),
          Text(label, style: BODY1)
        ],
      ),
    );
  }
}

