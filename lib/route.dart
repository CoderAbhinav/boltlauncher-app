
import 'package:boltlauncher/views/home_page.dart';
import 'package:boltlauncher/views/landing_page.dart';
import 'package:boltlauncher/views/remote_controller.dart';
import 'package:flutter/material.dart';

class ApplicationRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    "/" : (context) => HomePage(),
    "/landing" : (context) => const LandingPage(),
    "/remote_control" : (context) => RemoteController()
  };

}