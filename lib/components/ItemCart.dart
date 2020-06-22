import 'package:flutter/material.dart';
import 'package:i9xpapp/blocs/CartBloc.dart';
import 'package:provider/provider.dart';

class ItemCart extends StatefulWidget {
  final Image image;
  final String title;
  final String subtitle;
  final double price;
  final index;

  ItemCart({
    Key key,
    this.image,
    this.title,
    this.subtitle,
    this.price,
    this.index,
  }) : super(key: key);

  @override
  _ItemCartState createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  int _numItems = 1;

  @override
  Widget build(BuildContext context) {
    final cartBloc = Provider.of<CartBloc>(context);
    double _price = (_numItems * widget.price);
    return Padding(
      padding: EdgeInsets.only(top: 29, left: 25),
      child: Row(
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: widget.image,
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(
                  fontFamily: 'Neusa-Medium',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              Text(
                widget.subtitle,
                style: TextStyle(
                  fontFamily: 'Neusa-Light',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '\$${_price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontFamily: 'Neusa-Medium',
                  fontSize: 15,
                  color: Color.fromRGBO(249, 199, 5, 1),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      if (int.parse(
                              cartBloc.cart[widget.index]["qnty"].toString()) >
                          0) {
                        cartBloc.removeItem(widget.index);
                        cartBloc.getTotal();
                      }
                    },
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                    child: Center(
                      child: Text(
                        cartBloc.cart[widget.index]["qnty"].toString(),
                        style: TextStyle(
                          fontFamily: 'Neusa',
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        if (int.parse(cartBloc.cart[widget.index]["qnty"]
                                .toString()) >=
                            0) {
                          cartBloc.addItem(widget.index);
                          cartBloc.getTotal();
                        }
                      },
                      child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
