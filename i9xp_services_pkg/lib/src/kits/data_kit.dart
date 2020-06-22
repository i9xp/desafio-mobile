import 'dart:async';

import 'package:flutter/foundation.dart';

class DataKit {
  static debounce(Timer debounce, VoidCallback callback, [int delay]) {
    if (debounce?.isActive ?? false) debounce.cancel();
    debounce = Timer(Duration(milliseconds: delay ?? 500), () {
      callback?.call();
    });
  }
}
