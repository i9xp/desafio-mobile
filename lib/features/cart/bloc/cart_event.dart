part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
}

class CartEventAddItem extends CartEvent {
  int productId;

  CartEventAddItem({@required this.productId});

  @override
  List<Object> get props => [];

  @override
  String toString() => 'CartEventAddItem { productId: $productId}';
}
