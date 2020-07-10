import 'package:flutter/material.dart';

class InfoProductWidget extends StatelessWidget {
  final title1;
  final title2;
  final subtitle1;
  final subtitle2;

  const InfoProductWidget(
      {Key key, this.title1, this.title2, this.subtitle1, this.subtitle2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title1,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subtitle1,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title2,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                subtitle2,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
