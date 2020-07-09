import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/models/nav_bottom_item.model.dart';
import 'package:i9xp_commerce/pages/tab_cart/index.dart';
import 'package:i9xp_commerce/pages/tab_home/index.dart';
import 'package:i9xp_commerce/pages/tab_more/index.dart';
import 'package:i9xp_commerce/pages/tab_profile/index.dart';
import 'package:i9xp_commerce/pages/tab_search/index.dart';

class TabsController extends GetxController {
  List<Widget> pages = <Widget>[
    TabHome(),
    TabSearch(),
    TabCart(),
    TabProfile(),
    TabMore(),
  ];

  List<NavBottomItemModel> items = [
    NavBottomItemModel(Feather.home, "Home"),
    NavBottomItemModel(Feather.search, "Search"),
    NavBottomItemModel(Feather.shopping_cart, "Cart"),
    NavBottomItemModel(Feather.user, "Profile"),
    NavBottomItemModel(Feather.menu, "More"),
  ];

  RxInt selectedIndex = RxInt(0);
  setSelectedIndex(int value) => selectedIndex.value = value;

  Widget get selectedPage {
    return pages[selectedIndex.value];
  }
  
}
