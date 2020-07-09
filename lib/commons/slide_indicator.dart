import 'package:flutter/material.dart';

class SlideIndicator extends StatelessWidget {
  
  final int selectedImageIndex;
  final List<String> images;
  SlideIndicator(this.images, this.selectedImageIndex);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: images.map((url) {
        int index = images.indexOf(url);
        return Container(
          width: 5.0,
          height: 5.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selectedImageIndex == index
                ? Color.fromRGBO(255, 255, 255, 0.9)
                : Color.fromRGBO(255, 255, 255, 0.2),
          ),
        );
      }).toList(),
    );
  }
}
