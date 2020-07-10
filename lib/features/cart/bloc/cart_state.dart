part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();
}

class CartStateInitial extends CartState {
  @override
  List<Object> get props => [];
}

class CartStateLoading extends CartState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class CartStateLoaded extends CartState {
  List<Item> items;

  CartStateLoaded({@required this.items});

  @override
  List<Object> get props => [items];

  @override
  String toString() => 'CartStateLoaded { items: $items }';
}

class CartStateFailure extends CartState {
  CartStateFailure(
      {this.error = 'Something went wrong. Please try again later.'});

  String error;

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'CartStateFailure { error: $error }';
}
