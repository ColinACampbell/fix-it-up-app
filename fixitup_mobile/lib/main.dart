import 'package:fixitup_mobile/screens/starter_screen.dart';
import 'package:fixitup_mobile/utils/route_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(App());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteUtil.onGenerateRoute,
      theme: ThemeData(
          textTheme: TextTheme(
              headline1: TextStyle(fontFamily: "PasseroOne"),
              headline2: TextStyle(
                  fontFamily: "Scada",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
              headline3: TextStyle(
                  fontFamily: "Scada",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
              caption: TextStyle(
                  fontFamily: "Scada", fontSize: 20, color: Colors.white)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(45, 66, 99, 1))))),
      home: StarterScreen(),
    );
  }
}
