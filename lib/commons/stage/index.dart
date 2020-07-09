import 'package:flutter/material.dart';

import 'widgets/data_loading.dart';
import 'widgets/data_offline.dart';

class Stage extends StatelessWidget {
  final bool isLoading;
  final bool isOffline;

  final Widget loading;
  final Widget offline;
  final Widget content;

  Stage({
    this.isLoading = false,
    this.isOffline = false,
    this.loading,
    this.offline,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !this.isLoading,
      replacement: loading ?? DataLoading(),
      child: Visibility(
        visible: !this.isOffline,
        replacement: offline ?? DataOffline(),
        child: content ?? Text("Default Content"),
      ),
    );
  }
}
