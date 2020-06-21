import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:i9xp_app/app/shared/controllers/app_controller.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class HostView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(
            color: GREY_4,
            leading: Image(image: AppImage.logo),
            actions: <Widget>[
              Observer(builder: (_) {
                return AppBadge(
                    icon: AppImage.messages, 
                    counter: app.model.messagesLength,
                    iconSize: 40,    
                );
              }),
              HSpace(PADDING_S),
              Observer(builder: (_) {
                return AppBadge(
                    icon: AppImage.notifications,
                    counter: app.model.notificationsLength,
                    iconSize: 40);
              }),
              VSpace(APPBAR_HEIGHT.height),
            ],
          ),
          preferredSize: APPBAR_HEIGHT),
      body: Observer(builder: (_) => app.model.currentView),
      bottomNavigationBar: Observer(builder: (_) => AppBottomNavigationBar(index: app.model.viewIndex, onTap: app.model.setTabViewIndex),
    ));
  }
}