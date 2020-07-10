import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'dart:math' show Random;

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  @override
  NotificationState get initialState => NotificationStateInitial();

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    if (event is NotificationEventFetch) {
      yield NotificationStateLoading();

      var randomizer = new Random();

      yield NotificationStateLoaded(
          totalNewNotifications: randomizer.nextInt(100));
    } else {
      yield NotificationStateFailure();
    }
  }
}
