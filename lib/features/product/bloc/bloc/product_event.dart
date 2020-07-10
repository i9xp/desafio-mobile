part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();
}

class ProductEventFetch extends ProductEvent {
  int productId;

  ProductEventFetch({this.productId});

  @override
  List<Object> get props => [productId];

  @override
  String toString() => 'NotificationEventFetch { productId: $productId }';
}
