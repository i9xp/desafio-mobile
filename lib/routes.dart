import 'package:get/route_manager.dart';
import 'pages/tab_panel/index.dart';

routes() => [
  GetPage(name: "/", page: () => TabPanel()),
];