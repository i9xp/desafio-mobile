import 'package:flutter/material.dart';
import 'package:i9xp_app/app/pages/tab_views/home/home_view.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';
import 'package:mobx/mobx.dart';

part 'app_model.g.dart';

class AppModel = _AppModelBase with _$AppModel;

abstract class _AppModelBase with Store {

  @observable ObservableList<String> messages = ObservableList<String>();
  @computed int get messagesLength => messages.length;
  @action addMessage(String message) => messages.add(message);
  
  @observable ObservableList<String> notifications = ObservableList<String>();
  @computed int get notificationsLength => notifications.length;
  @action addNotification(String notification) => notifications.add(notification);
  
  @observable int _viewIndex = 0;
  int get viewIndex => _viewIndex;
  @action setTabViewIndex(int value) => _viewIndex = value;

  static const List<Widget> _appViews = <Widget>[
    HomeView(title: 'Desafio Mobile'),
    NotImplemented(),
    NotImplemented(),
    NotImplemented(),
    NotImplemented(),
  ];

  Widget get currentView => _appViews[viewIndex];

  
}