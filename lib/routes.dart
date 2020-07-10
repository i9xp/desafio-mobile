import 'package:get/route_manager.dart';
import 'package:i9xp_commerce/pages/cart/index.dart';
import 'package:i9xp_commerce/pages/order_placed/index.dart';
import 'package:i9xp_commerce/pages/product_detail/index.dart';
import 'pages/tab_panel/index.dart';

routes() => [
  GetPage(name: "/", page: () => TabPanel()),
  GetPage(name: "/categories/:category_id/products/:product_id", page: () => ProductDetail(), transition: Transition.rightToLeft, transitionDuration: Duration(milliseconds: 250)),
  GetPage(name: "/cart", page: () => Cart(), transition: Transition.rightToLeft, transitionDuration: Duration(milliseconds: 250)),
  GetPage(name: "/order_placed", page: () => OrderPlaced(), transition: Transition.rightToLeft, transitionDuration: Duration(milliseconds: 250)),
];