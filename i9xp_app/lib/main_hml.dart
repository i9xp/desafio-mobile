import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i9xp_app/app/shared/controllers/app_controller.dart';
import 'package:i9xp_app/main.dart' as Bootstrap;

void main() {
  
  debugPrint = (String message, {int wrapWidth}) {
    final formattedMessage = "[${DateTime.now().toUtc()}] $message";
    debugPrintSynchronously(formattedMessage);
  };

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /// Initialize the app controller singleton
  AppController();

  Bootstrap.main();
}