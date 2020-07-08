import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/features/dashboard/models/dashboard.dart';
import 'package:marketplace/utils/api.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  @override
  DashboardState get initialState => DashboardStateInitial();

  @override
  Stream<DashboardState> mapEventToState(
    DashboardEvent event,
  ) async* {
    if (event is DashboardEventFetch) {
      yield DashboardStateLoading();
      String endpoint = "/dashboard";

      final response = await Api.makeGet(endpoint, {
        'Content-Type': 'application/x-www-form-urlencoded',
      });

      if (response.statusCode == 200) {
        Dashboard dashboard = Dashboard.fromJson(json.decode(response.body));

        yield DashboardStateLoaded(dashboard: dashboard);
      } else {
        yield DashboardStateFailure();
      }
    } else {
      yield DashboardStateFailure();
    }
  }
}
