import 'package:desafio_mobile/app/models/category_model.dart';
import 'package:desafio_mobile/app/modules/home/tabs/home_tab/parts/category_part/category_part_widget.dart';
import 'package:desafio_mobile/app/modules/home/tabs/home_tab/parts/latest_part/latest_part_widget.dart';
import 'package:desafio_mobile/app/modules/home/tabs/home_tab/parts/product_part/product_part_widget.dart';
import 'package:desafio_mobile/app/shared/components/background_gradient/background_gradient_widget.dart';
import 'package:desafio_mobile/app/shared/components/basic_structure/basic_structure_widget.dart';
import 'package:desafio_mobile/app/shared/components/category_tile/category_tile_widget.dart';
import 'package:desafio_mobile/app/shared/components/default_appbar/default_appbar_widget.dart';
import 'package:desafio_mobile/app/shared/components/default_bottombar/default_bottombar_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../app_controller.dart';

class HomeTabPage extends StatefulWidget {
  final AppController appController;
  final PageController pageController;
  const HomeTabPage({Key key, this.appController, this.pageController})
      : super(key: key);

  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Observer(builder: (_) {
          return widget.appController.loading
              ? Container(height: 84, color: Theme.of(context).primaryColorDark)
              : DefaultBottombarWidget(
                  pageController: widget.pageController,
                );
        }),
        appBar: DefaultAppbarWidget(
          titleComponent: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              "imgs/logo.png",
              width: 52,
              height: 24,
              fit: BoxFit.contain,
            ),
          ),
          centerTitle: false,
        ),
        body: BasicStructureWidget(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Observer(builder: (_) {
              return widget.appController.loading
                  ? Center(child: CircularProgressIndicator())
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CategoryPartWidget(appController: widget.appController),
                        SizedBox(height: 10),
                        LatestPartWidget(appController: widget.appController),
                        SizedBox(height: 10),
                        ProductPartWidget(
                          appController: widget.appController,
                          pageController: widget.pageController,
                        ),
                      ],
                    );
            })));
  }
}
