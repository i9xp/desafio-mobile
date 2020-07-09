import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/components/category_list.dart';
import 'package:i9xp/app/modules/home/components/category_title.dart';
import 'package:i9xp/app/modules/home/components/latest_page_view.dart';
import 'package:i9xp/app/modules/home/components/logo_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i9xp/app/modules/home/models/action_model.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/modules/home/models/category_image.dart';
import 'package:i9xp/app/modules/home/models/category_item_model.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final categories = [
    CategoryItemModel("Apparel", CategoryImage.APPAREL),
    CategoryItemModel("Beauty", CategoryImage.BEAUTY),
    CategoryItemModel("Shoes", CategoryImage.SHOES),
    CategoryItemModel("See all", CategoryImage.SEE_ALL),
  ];

  final appbarActions = <ActionModel>[
    ActionModel(ActionType.MESSAGES, notifications: 5),
    ActionModel(ActionType.NOTIFICATIONS, notifications: 10),
  ];

  num get pagePadding => 25.h;

  void _initScreenUtil() {
    ScreenUtil.init(width: 375, height: 667, allowFontScaling: false);
  }

  @override
  Widget build(BuildContext context) {
    _initScreenUtil();
    return Scaffold(
      backgroundColor: AppColors.HOME_BACKGROUND_A,
      appBar: AppBar(
        titleSpacing: pagePadding,
        elevation: 0,
        title: AppbarHomeTitle(
          leading: Logo(),
          actions: appbarActions,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CategoryTitle(title: "Categories"),
              SizedBox(height: 14),
              CategoryList(categories: categories),
              SizedBox(height: 27),
              CategoryTitle(title: "Latest"),
              LatestPageView(),
            ],
          ),
        ),
      ),
    );
  }
}

class AppbarHomeTitle extends StatelessWidget {
  final List<ActionModel> actions;
  final Widget leading;

  const AppbarHomeTitle({
    Key key,
    this.actions = const <ActionModel>[],
    this.leading,
  }) : super(key: key);

  bool get hasActions => actions.length > 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading ?? Container(),
        if (hasActions)
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _modelToWidget(),
            ),
          ),
      ],
    );
  }

  List<Widget> _modelToWidget() {
    return actions.fold(
      <Widget>[],
      (List<Widget> previousValue, element) {
        return previousValue
          ..addAll([
            AppAction(type: element.type, number: element.notifications),
            SizedBox(width: 20),
          ]);
      },
    ).toList()
      ..removeLast();
  }
}
