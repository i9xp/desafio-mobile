import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPageView extends StatelessWidget {
  const ProductPageView({
    Key key,
    @required this.imageViewController,
    this.children,
    this.height,
    this.width,
  }) : super(key: key);

  final PageController imageViewController;
  final List<Widget> children;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 301.h,
      width: width ?? double.infinity,
      child: PageView(
        controller: imageViewController,
        children: children,
      ),
    );
  }
}
