part of 'notification_bloc.dart';

abstract class NotificationEvent extends Equatable {
  const NotificationEvent();
}

class NotificationEventFetch extends NotificationEvent {
  NotificationEventFetch();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'NotificationEventFetch { }';
}
