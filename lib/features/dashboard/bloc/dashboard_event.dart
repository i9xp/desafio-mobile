part of 'dashboard_bloc.dart';

abstract class DashboardEvent extends Equatable {
  const DashboardEvent();
}

class DashboardEventFetch extends DashboardEvent {
  DashboardEventFetch();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'DashboardEventFetch { }';
}
