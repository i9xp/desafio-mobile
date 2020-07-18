import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  bool showLogo;

  CustomAppBar({this.showLogo = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          showLogo ? Image.asset("assets/images/logo.png") : Container(),
          Row(
            children: [
              Container(
                width: 32,
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {},
                  child: SvgPicture.asset(
                    "assets/icons/messages.svg",
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 32,
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {},
                  child: SvgPicture.asset(
                    "assets/icons/notifications.svg",
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
