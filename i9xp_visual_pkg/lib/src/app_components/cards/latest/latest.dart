import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_assets/app_images/app_image.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_fonts/app_text_style.dart';

class LatestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            child: Text('Latest', style: TITLE),
            padding: EdgeInsets.only(left: PADDING_L),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: PageView(
                pageSnapping: true,
                controller: PageController(
                  viewportFraction: .8,
                  initialPage: 1,
                ),
                children: <Widget>[
                  GestureDetector(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: PADDING_XS),
                      child: Image(image: AppImage.banner_2),
                    )),
                  GestureDetector(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: PADDING_XS),
                      child: Image(image: AppImage.banner_1),
                    )),
                  GestureDetector(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: PADDING_XS),
                      child: Image(image: AppImage.banner_2),
                    )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}