import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/features/cart/models/item.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  @override
  CartState get initialState => CartStateInitial();

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    if (event is CartEventLoad) {
      yield CartStateLoading();

      yield CartStateLoaded(items: []);
    } else if (event is CartEventAddItem) {
      yield CartStateLoading();

      int index = event.cart
          .indexWhere((item) => item.productId == event.newItem.productId);

      if (index >= 0) {
        event.cart.map((item) {
          if (item.productId == event.newItem.productId) {
            item.quantity += event.newItem.quantity;
          }
        });
      } else {
        event.cart.add(event.newItem);
      }

      yield CartStateLoaded(items: event.cart);
    } else {
      yield CartStateFailure();
    }
  }
}
