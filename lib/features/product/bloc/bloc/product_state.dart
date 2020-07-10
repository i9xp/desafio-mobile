part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();
}

class ProductStateInitial extends ProductState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ProductStateLoading extends ProductState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class ProductStateLoaded extends ProductState {
  Product product;

  ProductStateLoaded({this.product});

  @override
  List<Object> get props => [product];

  @override
  String toString() => 'ProductStateLoaded { product: $product }';
}

class ProductStateFailure extends ProductState {
  ProductStateFailure(
      {this.error = 'Something went wrong. Please try again later.'});

  String error;

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'ProductStateFailure { error: $error }';
}
