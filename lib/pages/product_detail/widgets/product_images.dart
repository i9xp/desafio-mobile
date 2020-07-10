import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/product_image.dart';
import 'package:i9xp_commerce/commons/slide_indicator.dart';

import '../controller.dart';

class ProductImages extends StatelessWidget {
  final ProductDetailController controller = Get.find();
  final List<String> images;
  final int selectedImageIndex;
  ProductImages(this.images, this.selectedImageIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SlideIndicator(
          images,
          selectedImageIndex,
        ),
        SizedBox(height: 10),
        CarouselSlider(
          options: CarouselOptions(
            height: Get.width - 170,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            onPageChanged: (int index, _) => controller.setSelectedImage(index),
          ),
          carouselController: controller.carouselController,
          items: images.map(
            (String image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: Get.width - 170,
                    height: Get.width - 170,
                    child: ProductImage(image)
                  );
                },
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
