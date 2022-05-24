import 'package:fixitup_mobile/screens/starter_screen.dart';
import 'package:fixitup_mobile/screens/user_home_screen.dart';
import 'package:flutter/material.dart';

class RouteUtil {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case StarterScreen.routeName:
        return MaterialPageRoute(builder: (_) => StarterScreen());
      case UserHomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => UserHomeScreen());
    }

    return MaterialPageRoute(builder: (_) => StarterScreen());
  }
}
