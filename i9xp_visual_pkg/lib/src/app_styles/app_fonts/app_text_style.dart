import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_colors/app_color.dart';

/// Auto import class helper 
class AppTextStyle {}
const String package = "i9xp_visual_pkg";

const TextStyle _light = TextStyle(fontFamily: 'NeusaNextStd-Light', package: package);
const TextStyle _regular = TextStyle(fontFamily: 'NeusaNextStd-Regular', package: package);
const TextStyle _medium = TextStyle(fontFamily: 'NeusaNextStd-Medium', package: package);
const TextStyle _bold = TextStyle(fontFamily: 'NeusaNextStd-Bold', package: package);

// ignore:non_constant_identifier_names
final TextStyle TITLE = _bold.copyWith(color: WHITE, fontSize: 30);
// final TextStyle TITLE = TextStyle(fontFamily: 'NeusaNextStd-Bold');
// ignore:non_constant_identifier_names
final TextStyle BODY1 = _regular.copyWith(color: WHITE, fontSize: 15);
// ignore:non_constant_identifier_names
final TextStyle BODY2 = _medium.copyWith(color: WHITE, fontSize: 12);
// ignore:non_constant_identifier_names
final TextStyle BUTTON = _bold.copyWith(color: WHITE, fontSize: 15);
// ignore:non_constant_identifier_names
final TextStyle SUBHEAD = _bold.copyWith(color: WHITE, fontSize: 15);
// ignore:non_constant_identifier_names
final TextStyle DISPLAY1 = _medium.copyWith(color: WHITE, fontSize: 15);
// ignore:non_constant_identifier_names
final TextStyle DISPLAY2 = _light.copyWith(color: WHITE, fontSize: 15);
// ignore:non_constant_identifier_names
final TextStyle DISPLAY3 = _medium.copyWith(color: ORANGE_1, fontSize: 15);
// ignore:non_constant_identifier_names
final TextStyle DISPLAY4 = _medium.copyWith(color: ORANGE_1, fontSize: 10);
// ignore:non_constant_identifier_names
final TextStyle OVERLINE = _bold.copyWith(color: WHITE, fontSize: 10);
// ignore:non_constant_identifier_names
final TextStyle CAPTION = _regular.copyWith(color: WHITE, fontSize: 12);