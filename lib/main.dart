import 'package:flutter/material.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'routes.dart';
import 'theme.dart';

void main() {
  runApp(Soccerlab());
}

class Soccerlab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Greens Kick",
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),


    );
  }
}
