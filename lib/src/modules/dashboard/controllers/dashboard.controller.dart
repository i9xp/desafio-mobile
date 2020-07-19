import 'package:desafioi9xp/src/modules/dashboard/stores/dashboard.store.dart';
import 'package:flutter/material.dart';

class DashboardController {
  DashboardStore dashboardStore;

  DashboardController(this.dashboardStore);

  PageController latestPageController = PageController(viewportFraction: 0.9);
}
