import 'package:desafioi9xp/src/core/widgets/appbar.widget.dart';
import 'package:desafioi9xp/src/core/widgets/custombadge.widget.dart';
import 'package:desafioi9xp/src/modules/dashboard/controllers/dashboard.controller.dart';
import 'package:desafioi9xp/src/modules/dashboard/widgets/categories.widget.dart';
import 'package:desafioi9xp/src/modules/dashboard/widgets/latest.widget.dart';
import 'package:desafioi9xp/src/modules/dashboard/widgets/products.widget.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  DashboardController _dashboardController = Modular.get<DashboardController>();

  @override
  void initState() {
    _dashboardController.dashboardStore.loadProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          CustomBadge(
            count: 5,
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
          CustomBadge(
            count: 9,
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.5],
              colors: [AppColors.bgBottomNavBarColor, AppColors.backgroundColor]),
        ),
        child: ListView(
          children: [
            Categories(),
            Divider(height: 30, color: Colors.transparent),
            Latest(_dashboardController.latestPageController),
            Divider(height: 4.0, color: Colors.transparent),
            Products(_dashboardController),
          ],
        ),
      ),
    );
  }
}
