import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/pages/product/components/info_tab.dart';
import 'package:i9xp/app/shared/constants/colors.dart';

class ProductInfoTabbar extends StatefulWidget {
  const ProductInfoTabbar({
    Key key,
    @required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  _ProductInfoTabbarState createState() => _ProductInfoTabbarState();
}

class _ProductInfoTabbarState extends State<ProductInfoTabbar> {
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: TabBar(
        labelPadding: EdgeInsets.zero,
        controller: widget.tabController,
        unselectedLabelColor: AppColors.PRODUCT_TAB_TEXT,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.PRODUCT_SELECTED_TAB,
        ),
        tabs: [
          Tab(
            child: InfoTab(
              isSelected: widget.tabController.index == 0,
              label: "Product",
            ),
          ),
          Tab(
            child: InfoTab(
              isSelected: widget.tabController.index == 1,
              label: "Details",
            ),
          ),
          Tab(
            child: InfoTab(
              isSelected: widget.tabController.index == 2,
              label: "Reviews",
            ),
          ),
        ],
      ),
    );
  }
}
