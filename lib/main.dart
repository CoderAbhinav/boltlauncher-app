import 'package:boltlauncher/controllers/app_controller.dart';
import 'package:boltlauncher/route.dart';
import 'package:boltlauncher/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());

  Get.put(ApplicationLogicController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BoltLauncher',
      theme: ApplicationThemeLanguage.lightThemData,
      darkTheme: ApplicationThemeLanguage.darkThemeData,
      routes: ApplicationRoutes.routes,
    );
  }
}
