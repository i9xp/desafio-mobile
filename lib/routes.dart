import 'package:get/route_manager.dart';
import 'package:i9xp_commerce/pages/product_detail/index.dart';
import 'pages/tab_panel/index.dart';

routes() => [
  GetPage(name: "/", page: () => TabPanel()),
  GetPage(name: "/products/:id", page: () => ProductDetail(), transition: Transition.rightToLeft, transitionDuration: Duration(milliseconds: 250)),
];