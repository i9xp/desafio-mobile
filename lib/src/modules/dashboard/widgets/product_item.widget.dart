import 'package:desafioi9xp/src/modules/dashboard/styles/dashboard.style.dart';
import 'package:flutter/material.dart';

class ProductItemListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        width: 97,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              child: Image.asset("assets/images/apparel.png"),
            ),
            Divider(height: 5, color: Colors.transparent),
            Text(
              "Ankle Boots",
              style: DashboardStyle.PRODUCT_TITLE,
            ),
            Text(
              "\$49.00",
              style: DashboardStyle.PRODUCT_PRICE,
            ),
          ],
        ),
      ),
    );
  }
}
