import 'package:flutter/material.dart';
import 'package:i9xpapp/blocs/CartBloc.dart';
import 'package:provider/provider.dart';

class TotalCart extends StatefulWidget {
  @override
  _TotalCartState createState() => _TotalCartState();
}

class _TotalCartState extends State<TotalCart> {
  @override
  Widget build(BuildContext context) {
    final cartBloc = Provider.of<CartBloc>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Divider(
          color: Color.fromRGBO(114, 124, 142, 0.15),
          height: 1,
        ),
        SizedBox(height: 17),
        Text(
          'TOTAL',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 0.5),
            fontFamily: 'Neusa-Medium',
            fontSize: 10,
            letterSpacing: 0.7,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          '\$${cartBloc.total.toStringAsFixed(2)}',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Neusa-Bold',
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Free Domestic Shipping',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Neusa',
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
