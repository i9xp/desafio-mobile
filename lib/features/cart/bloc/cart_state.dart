part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();
}

class CartStateInitial extends CartState {
  @override
  List<Object> get props => [];
}
