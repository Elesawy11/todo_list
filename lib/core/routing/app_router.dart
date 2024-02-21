import 'package:flutter/material.dart';
import 'package:todo_list/core/routing/routes.dart';
import 'package:todo_list/features/home/ui/home_screen.dart';

class AppRouter {
  Route generatRoute(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'no route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
