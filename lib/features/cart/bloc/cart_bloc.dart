import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  @override
  CartState get initialState => CartStateInitial();

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
