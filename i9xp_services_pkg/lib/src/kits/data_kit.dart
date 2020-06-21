import 'dart:async';

import 'package:flutter/foundation.dart';

class DataKit {
  static debounce(Timer debounce, VoidCallback callback) {
    if (debounce?.isActive ?? false) debounce.cancel();
    debounce = Timer(const Duration(milliseconds: 500), () {
      callback?.call();
    });
  }
}
