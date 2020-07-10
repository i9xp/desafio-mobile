import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/features/cart/bloc/cart_bloc.dart';
import 'package:marketplace/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:marketplace/features/product/bloc/bloc/product_bloc.dart';
import 'package:marketplace/widgets/button_i9xp.dart';
import 'package:marketplace/widgets/detail_product.dart';

class ProductPage extends StatefulWidget {
  int productId;
  String product;

  ProductPage({@required this.productId, @required this.product});

  @override
  State<StatefulWidget> createState() => _ProductState();
}

class _ProductState extends State<ProductPage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFFF9C705),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      widget.product,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        "assets/icons/icon-cart.svg",
                        color: Colors.white,
                        height: 30,
                      )),
                ],
              ),
            ),
            BlocProvider<ProductBloc>(
              create: (context) => ProductBloc()
                ..add(
                  ProductEventFetch(
                    productId: widget.productId,
                  ),
                ),
              child: BlocBuilder<ProductBloc, ProductState>(
                  // ignore: missing_return
                  builder: (context, stateProduct) {
                if (stateProduct is ProductStateLoaded) {
                  final List<Widget> images = stateProduct.product.images
                      .map((item) => Container(
                            child: Container(
                              margin: EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(item,
                                          fit: BoxFit.scaleDown, width: 1000.0),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ))
                      .toList();

                  Widget priceRating = new Container(
                    padding: new EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '\$${stateProduct.product.price.toStringAsFixed(2)}',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 19,
                          width: 44,
                          decoration: BoxDecoration(
                            color: Color(0xFFF9C705),
                            borderRadius: BorderRadius.all(
                              Radius.circular(23),
                            ),
                            border:
                                Border.all(width: 0, style: BorderStyle.none),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                child: Text(
                                  stateProduct.product.ratingGeneral
                                      .toStringAsFixed(1),
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );

                  Widget productGallery = new Expanded(
                      child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: stateProduct.product.images.map((url) {
                          int index = stateProduct.product.images.indexOf(url);
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index
                                  ? Color.fromRGBO(255, 255, 255, 0.9)
                                  : Color.fromRGBO(255, 255, 255, 0.4),
                            ),
                          );
                        }).toList(),
                      ),
                      CarouselSlider(
                        items: images,
                        options: CarouselOptions(
                            // autoPlay: true,
                            enlargeCenterPage: true,
                            // aspectRatio: 2.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            }),
                      ),
                    ],
                  ));

                  Widget descriptionProduct = new Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    padding: new EdgeInsets.all(8.0),
                  );

                  Widget bottomBanner = Container(
                    padding: EdgeInsets.all(15.0),
                    color: Color(0xFF2E3746),
                    height: 78.0,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ButtonI9XP(
                            title: 'SHARE THIS',
                            primaryColor: false,
                            illustration: Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                              size: 16,
                            ),
                            onTap: () {},
                          ),
                          ButtonI9XP(
                            title: 'ADD TO CART',
                            illustration: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFF9C705),
                              size: 16,
                            ),
                            onTap: () {
                              BlocProvider.of<CartBloc>(context)
                                ..add((CartEventAddItem(
                                    productId: widget.productId)));
                            },
                          ),
                        ],
                      ),
                    ),
                  );

                  Widget body = new Column(
                    // This makes each child fill the full width of the screen
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      priceRating,
                      productGallery,
                      DetailProduct(product: stateProduct.product),
                      bottomBanner,
                    ],
                  );
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height - 60,
                      child: body);
                } else {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Loading...'),
                        SizedBox(
                          height: 20,
                        ),
                        CircularProgressIndicator()
                      ],
                    ),
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
