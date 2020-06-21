import 'package:flutter/material.dart';

class InfosRowWidget extends StatelessWidget {
  ///Label for information from the left column
  final String label1;
  //Information from the left column
  final String infos1;

  ///Label for information from the right column
  final String label2;
  //Information from the right column
  final String infos2;
  const InfosRowWidget(
      {Key key, this.label1, this.infos1, this.label2, this.infos2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 2 - 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(label1.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(fontSize: 22, fontWeight: FontWeight.w700)),
              SizedBox(height: 5),
              Text(infos1,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        fontSize: 24,
                      )),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2 - 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(label2.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(fontSize: 22, fontWeight: FontWeight.w700)),
              SizedBox(height: 5),
              Text(infos2,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        fontSize: 24,
                      )),
            ],
          ),
        ),
      ],
    );
  }
}
