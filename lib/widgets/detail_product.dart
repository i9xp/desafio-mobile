import 'package:flutter/material.dart';
import 'package:marketplace/features/product/models/product.dart';
import 'package:marketplace/widgets/row_detail.dart';

class DetailProduct extends StatefulWidget {
  Product product;

  DetailProduct({
    this.product,
  });

  @override
  State<StatefulWidget> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    int _currentTab = 1;
    return Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentTab = 0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _currentTab == 0
                          ? Color(0xFFFFC600)
                          : Colors.transparent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(19),
                      ),
                      border: Border.all(width: 0, style: BorderStyle.none),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                    child: Text(
                      'Product',
                      style: TextStyle(
                          fontSize: 15,
                          color: _currentTab == 0
                              ? Color(0xFF515C6F)
                              : Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentTab = 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _currentTab == 1
                          ? Color(0xFFFFC600)
                          : Colors.transparent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(19),
                      ),
                      border: Border.all(width: 0, style: BorderStyle.none),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                    child: Text(
                      'Details',
                      style: TextStyle(
                          fontSize: 15,
                          color: _currentTab == 1
                              ? Color(0xFF515C6F)
                              : Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentTab = 2;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _currentTab == 2
                          ? Color(0xFFFFC600)
                          : Colors.transparent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(19),
                      ),
                      border: Border.all(width: 0, style: BorderStyle.none),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                    child: Text(
                      'Review',
                      style: TextStyle(
                          fontSize: 15,
                          color: _currentTab == 2
                              ? Color(0xFF515C6F)
                              : Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RowDetail(
              leftTitle: 'BRAND',
              leftValue: widget.product.brand,
              rightTitle: 'SKU',
              rightValue: widget.product.sku,
            ),
            RowDetail(
              leftTitle: 'CONDITION',
              leftValue: widget.product.condition,
              rightTitle: 'MATERIAL',
              rightValue: widget.product.material,
            ),
            RowDetail(
              leftTitle: 'CATEGORY',
              leftValue: widget.product.category,
              rightTitle: 'FITTING',
              rightValue: widget.product.fitting,
            )
          ],
        ));
  }
}
