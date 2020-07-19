import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafioi9xp/src/modules/cart/models/cart_item.model.dart';
import 'package:desafioi9xp/src/modules/cart/styles/cart.style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductCartItem extends StatefulWidget {
  CartItemModel item;
  Function onRemove;
  Function onAdd;

  ProductCartItem(
    this.item, {
    @required this.onAdd,
    @required this.onRemove,
  });

  @override
  _ProductCartItemState createState() => _ProductCartItemState();
}

class _ProductCartItemState extends State<ProductCartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: [
            FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Modular.to.pushNamed('/product', arguments: widget.item.product);
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                minRadius: 50,
                maxRadius: 50,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Hero(
                    tag: widget.item.product.images[0],
                    child: CachedNetworkImage(imageUrl: widget.item.product.images[0]),
                  ),
                ),
              ),
            ),
            Container(width: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.product.name,
                  maxLines: 2,
                  style: CartSyle.PRODUCT_TITLE_TEXT,
                ),
                Text(
                  widget.item.product.category,
                  style: CartSyle.PRODUCT_DETAILS_TEXT,
                ),
                Divider(height: 10, color: Colors.transparent),
                Text(
                  "\$${widget.item.product.price}",
                  style: CartSyle.PRODUCT_PRICE_TEXT,
                ),
                Divider(height: 10, color: Colors.transparent),
                Row(
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: widget.onRemove,
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                    ),
                    Container(width: 10),
                    Text(
                      "${widget.item.amount}",
                      style: CartSyle.PRODUCT_NUM_ITEMS,
                    ),
                    Container(width: 10),
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: widget.onAdd,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
