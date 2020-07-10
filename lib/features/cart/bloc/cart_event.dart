part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
}

class CartEventLoad extends CartEvent {
  @override
  List<Object> get props => [];

  @override
  String toString() => 'CartEventLoad { }';
}

class CartEventAddItem extends CartEvent {
  List<Item> cart;
  Item newItem;

  CartEventAddItem({@required this.cart, @required this.newItem});

  @override
  List<Object> get props => [];

  @override
  String toString() => 'CartEventAddItem { cart: $cart, newItem: $newItem }';
}

class CartEventCheckout extends CartEvent {
  List<Item> items;

  CartEventCheckout({@required this.items});

  @override
  List<Object> get props => [];

  @override
  String toString() => 'CartEventCheckout { items: $items}';
}
