part of 'message_bloc.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();
}

class MessageEventFetch extends MessageEvent {
  MessageEventFetch();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'MessageEventFetch { }';
}
