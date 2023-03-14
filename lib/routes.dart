import 'package:flutter/material.dart';
import 'package:youtube_like_app/view/home.dart';

class GenerateRoute {
  static Route<dynamic> generateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Home());
      default:
        return MaterialPageRoute(builder: (_) => const Home());
    }
  }
}
