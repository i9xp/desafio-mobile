import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:desafio_mobile/app/modules/product/parts/details_part/components/infos_row/infos_row_widget.dart';
import 'package:flutter/material.dart';

class DetailsPartWidget extends StatelessWidget {
  final ProductModel productModel;

  const DetailsPartWidget({Key key, this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InfosRowWidget(
          label1: "Brand",
          infos1: productModel.brand,
          label2: "SKU",
          infos2: productModel.sku,
        ),
        SizedBox(height: 20),
        InfosRowWidget(
          label1: "Condition",
          infos1: productModel.condition,
          label2: "Material",
          infos2: productModel.material,
        ),
        SizedBox(height: 20),
        InfosRowWidget(
          label1: "category",
          infos1: productModel.category,
          label2: "fitting",
          infos2: productModel.fitting,
        ),
      ],
    );
  }
}
