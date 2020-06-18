
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/widgets/SvgItem.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.grayDarker,
        title: SVGItem(
          assetName: 'logo.svg',
        )
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [


        ],
      ),
      bottomNavigationBar:
    );
  }
}