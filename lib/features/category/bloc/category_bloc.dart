import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:marketplace/features/category/models/category.dart';
import 'package:marketplace/utils/api.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  @override
  CategoryState get initialState => CategoryStateInitial();

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    if (event is CategoryEventFetch) {
      yield CategoryStateLoading();
      String endpoint = "/category";

      final response = await Api.makeGet(endpoint, {
        'Content-Type': 'application/x-www-form-urlencoded',
      });

      if (response.statusCode == 200) {
        List<Category> categories = [];

        final data = json.decode(response.body) as List;

        data.forEach((cat) {
          categories.add(Category.fromJson(cat));
        });
        yield CategoryStateLoaded(categories: categories);
      } else {
        yield CategoryStateFailure();
      }
    } else {
      yield CategoryStateFailure();
    }
  }
}
