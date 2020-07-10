import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/product_image.dart';
import 'package:i9xp_commerce/models/product.model.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'package:i9xp_commerce/utils/formatters.dart';

class ItemProduct extends StatelessWidget {
  final double width;
  final double height;
  final ProductModel product;
  ItemProduct(
    this.product,
    this.width,
    this.height,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: RawMaterialButton(
        onPressed: () => Get.toNamed(
            "categories/${this.product.categoryId.value.toString()}/products/${this.product.id.value.toString()}"),
        padding: EdgeInsets.all(10),
        fillColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: width - 20,
              height: width - 20,
              child: ProductImage(this.product.imageUrl.value),
            ),
            SizedBox(height: 5),
            Text(
              this.product.name?.value ?? "",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 12,
                height: 1,
                color: AppColors.marineDark,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 3),
            Text(
              Formatters.brl(this.product.price?.value ?? 0).symbolOnLeft,
              style: TextStyle(
                fontSize: 10,
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
