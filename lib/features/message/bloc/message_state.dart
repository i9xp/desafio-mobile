part of 'message_bloc.dart';

abstract class MessageState extends Equatable {
  const MessageState();
}

class MessageStateInitial extends MessageState {
  @override
  List<Object> get props => [];
}

class MessageStateLoading extends MessageState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class MessageStateLoaded extends MessageState {
  MessageStateLoaded({@required this.totalNewMessages});

  int totalNewMessages;

  @override
  List<Object> get props => [totalNewMessages];

  @override
  String toString() =>
      'MessageStateLoaded { totalNewMessages: $totalNewMessages }';
}

class MessageStateFailure extends MessageState {
  MessageStateFailure(
      {this.error = 'Something went wrong. Please try again later.'});

  String error;

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'MessageStateFailure { error: $error }';
}
