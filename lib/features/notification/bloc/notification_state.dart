part of 'notification_bloc.dart';

abstract class NotificationState extends Equatable {
  const NotificationState();
}

class NotificationStateInitial extends NotificationState {
  @override
  List<Object> get props => [];
}

class NotificationStateLoading extends NotificationState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class NotificationStateLoaded extends NotificationState {
  NotificationStateLoaded({@required this.totalNewNotifications});

  int totalNewNotifications;

  @override
  List<Object> get props => [totalNewNotifications];

  @override
  String toString() =>
      'NotificationStateLoaded { totalNewNotifications: $totalNewNotifications }';
}

class NotificationStateFailure extends NotificationState {
  NotificationStateFailure(
      {this.error = 'Something went wrong. Please try again later.'});

  String error;

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'NotificationStateFailure { error: $error }';
}
