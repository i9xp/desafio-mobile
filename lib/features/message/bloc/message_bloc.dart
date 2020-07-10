import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'dart:math' show Random;

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  @override
  MessageState get initialState => MessageStateInitial();

  @override
  Stream<MessageState> mapEventToState(
    MessageEvent event,
  ) async* {
    if (event is MessageEventFetch) {
      yield MessageStateLoading();

      var randomizer = new Random();

      yield MessageStateLoaded(totalNewMessages: randomizer.nextInt(100));
    } else {
      yield MessageStateFailure();
    }
  }
}
