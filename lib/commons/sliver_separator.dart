import 'package:flutter/material.dart';

class SliverSeparator extends StatelessWidget{

  final double size;
  SliverSeparator(this.size);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: SizedBox(height: size));
  }
  
}