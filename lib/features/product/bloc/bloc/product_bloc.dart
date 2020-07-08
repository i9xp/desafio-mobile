import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  @override
  ProductState get initialState => ProductStateInitial();

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
