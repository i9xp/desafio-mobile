import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/message/bloc/message_bloc.dart';
import 'package:marketplace/features/notification/bloc/notification_bloc.dart';

class AppBarI9XP extends StatelessWidget {
  bool showLogo;

  AppBarI9XP({this.showLogo = true});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      alignment: Alignment(-1, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          showLogo
              ? Container(
                  child: Image(
                    image: AssetImage('assets/images/logo-alpha.png'),
                  ),
                )
              : Container(),
          Container(
            height: 30,
            child: Row(
              children: <Widget>[
                Container(
                    width: 30,
                    height: 35,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 0,
                            right: 0,
                            child: Image(
                              height: 23,
                              width: 23,
                              image:
                                  AssetImage('assets/icons/icon-messages.png'),
                            )),
                        Positioned(
                            left: 0,
                            bottom: 0,
                            child: BlocBuilder<MessageBloc, MessageState>(
                                // ignore: missing_return
                                builder: (context, state) {
                              if (state is MessageStateLoaded) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Container(
                                    color: Color(0xFFF9C705),
                                    padding: EdgeInsets.all(2),
                                    constraints: BoxConstraints(
                                      minWidth: 18,
                                      minHeight: 18,
                                      maxWidth: 18,
                                      maxHeight: 18,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        '${state.totalNewMessages}',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Container();
                              }
                            }))
                      ],
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 30,
                    height: 35,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 0,
                            right: 0,
                            child: Image(
                              height: 23,
                              width: 23,
                              image: AssetImage(
                                  'assets/icons/icon-notification.png'),
                            )),
                        Positioned(
                            left: 0,
                            bottom: 0,
                            child: BlocBuilder<NotificationBloc,
                                    NotificationState>(
                                // ignore: missing_return
                                builder: (context, state) {
                              if (state is NotificationStateLoaded) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Container(
                                    color: Color(0xFFF9C705),
                                    padding: EdgeInsets.all(2),
                                    constraints: BoxConstraints(
                                      minWidth: 18,
                                      minHeight: 18,
                                      maxWidth: 18,
                                      maxHeight: 18,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        '${state.totalNewNotifications}',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Container();
                              }
                            }))
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
