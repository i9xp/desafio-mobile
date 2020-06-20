import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class DefaultAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  /// Widget that contains a description of the app
  final Widget titleComponent;

  /// bool to center or not the title component at the appbar
  final bool centerTitle;

  /// elevation of the appbar
  final double elevation;

  /// list of products inside the cart
  final List products;

  const DefaultAppbarWidget(
      {Key key,
      @required this.titleComponent,
      this.centerTitle = false,
      this.elevation = 0,
      this.products})
      : assert(titleComponent != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleComponent,
      backgroundColor: Theme.of(context).primaryColorDark,
      centerTitle: centerTitle,
      elevation: elevation,
      actions: <Widget>[
        Badge(
          badgeContent: Text(
            "3",
            style:
                TextStyle(color: Theme.of(context).accentColor, fontSize: 16),
          ),
          position: BadgePosition.bottomLeft(bottom: 3, left: 2),
          badgeColor: Theme.of(context).buttonColor,
          child: IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Badge(
            badgeContent: Text("3",
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 16)),
            position: BadgePosition.bottomLeft(bottom: 3, left: 2),
            badgeColor: Theme.of(context).buttonColor,
            child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {}),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);
}
