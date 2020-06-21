import 'package:desafio_mobile/app/app_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:desafio_mobile/app/shared/services/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mobile/app/app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppController(AppModule.to.get())),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => LocalStorageService()),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
