part of 'dashboard_bloc.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();
}

class DashboardStateInitial extends DashboardState {
  @override
  List<Object> get props => [];
}

class DashboardStateLoading extends DashboardState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class DashboardStateLoaded extends DashboardState {
  DashboardStateLoaded({@required this.dashboard});

  Dashboard dashboard;

  @override
  List<Object> get props => [dashboard];

  @override
  String toString() => 'DashboardStateLoaded { dashboard: $dashboard }';
}

class DashboardStateFailure extends DashboardState {
  DashboardStateFailure(
      {this.error = 'Something went wrong. Please try again later.'});

  String error;

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'DashboardStateFailure { error: $error }';
}
