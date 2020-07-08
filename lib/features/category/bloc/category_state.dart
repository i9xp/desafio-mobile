part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
}

class CategoryStateInitial extends CategoryState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class CategoryStateLoading extends CategoryState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class CategoryStateLoaded extends CategoryState {
  CategoryStateLoaded({@required this.categories});

  List<Category> categories;

  @override
  List<Object> get props => [categories];

  @override
  String toString() => 'CategoryStateLoaded { categories: $categories }';
}

class CategoryStateFailure extends CategoryState {
  CategoryStateFailure(
      {this.error = 'Something went wrong. Please try again later.'});

  String error;

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'CategoryStateFailure { error: $error }';
}
