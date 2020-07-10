import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marketplace/features/product/models/product.dart';
import 'package:marketplace/utils/api.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  @override
  ProductState get initialState => ProductStateInitial();

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    if (event is ProductEventFetch) {
      yield ProductStateLoading();
      String endpoint = "/product";

      final response = await Api.makeGet(endpoint, {
        'Content-Type': 'application/x-www-form-urlencoded',
      });

      if (response.statusCode == 200) {
        Product product;

        final data = json.decode(response.body) as List;

        data.forEach((pro) {
          if (pro['productId'] == event.productId)
            product = Product.fromJson(pro);
        });

        yield ProductStateLoaded(product: product);
      } else {
        yield ProductStateFailure();
      }
    }
  }
}
