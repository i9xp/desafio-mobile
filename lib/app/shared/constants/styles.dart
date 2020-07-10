import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i9xp/app/shared/constants/colors.dart';

class AppStyles {
  // ignore: non_constant_identifier_names
  static final SECTION_TITLE = TextStyle(
    fontSize: 30.sp,
    color: AppColors.ON_BACKGROUND,
    fontWeight: FontWeight.bold,
  );

  // ignore: non_constant_identifier_names
  static final CATEGORY_ITEM = TextStyle(
    fontSize: 15.sp,
    color: AppColors.ON_BACKGROUND,
    fontWeight: FontWeight.bold,
  );

  // ignore: non_constant_identifier_names
  static final PRODUCT_TITLE = TextStyle(
    fontSize: 12.sp,
    color: AppColors.ON_CARD,
    fontWeight: FontWeight.w300,
  );

  // ignore: non_constant_identifier_names
  static final PRODUCT_PRICE = TextStyle(
    fontSize: 10.sp,
    color: AppColors.ON_CARD,
    fontWeight: FontWeight.bold,
  );

  // ignore: non_constant_identifier_names
  static final TABBAR_ITEM = TextStyle(
    fontSize: 11.sp,
    color: AppColors.ON_BACKGROUND,
  );

  // ignore: non_constant_identifier_names
  static final SELECTED_TABBAR_ITEM = TextStyle(
    fontSize: 11.sp,
    color: AppColors.SELECTED_TAB,
  );

  // ignore: non_constant_identifier_names
  static final BADGE_NUMBER = TextStyle(
    fontSize: 10,
    color: AppColors.ON_BACKGROUND,
    fontWeight: FontWeight.bold,
  );

  // ignore: non_constant_identifier_names
  static final PRODUCT_SCORE = TextStyle(
    fontSize: 12.sp,
    color: AppColors.ON_BADGE,
    fontWeight: FontWeight.bold,
  );

  // ignore: non_constant_identifier_names
  static final PRODUCT_TAB_STYLE = TextStyle(
    fontSize: 15.sp,
    color: AppColors.PRODUCT_TAB_TEXT,
    fontWeight: FontWeight.w300,
  );

  // ignore: non_constant_identifier_names
  static final PRODUCT_SELECTED_TAB_STYLE = TextStyle(
    fontSize: 15.sp,
    color: AppColors.PRODUCT_SELECTED_TAB_TEXT,
    fontWeight: FontWeight.w300,
  );

  // ignore: non_constant_identifier_names
  static final PRODUCT_BOTTOM_BUTTON = TextStyle(
    fontSize: 12.sp,
    color: AppColors.INDICATOR_COLOR,
    fontWeight: FontWeight.bold,
  );

  // ignore: non_constant_identifier_names
  static final PRODUCT_INFO_TITLE = TextStyle(
    fontSize: 12.sp,
    color: AppColors.PRODUCT_INFO,
    fontWeight: FontWeight.w500,
  );

  // ignore: non_constant_identifier_names
  static final PRODUCT_INFO_CONTENT = TextStyle(
    fontSize: 14.sp,
    color: AppColors.PRODUCT_INFO,
    fontWeight: FontWeight.w300,
  );

  // ignore: non_constant_identifier_names
  static final BADGE_NUMBER_TEN = AppStyles.BADGE_NUMBER.copyWith(fontSize: 9);
}
