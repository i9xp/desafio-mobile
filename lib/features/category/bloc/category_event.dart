part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();
}

class CategoryEventFetch extends CategoryEvent {
  CategoryEventFetch();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'CategoryEventFetch { }';
}
