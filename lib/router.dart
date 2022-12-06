import 'package:flutter/material.dart';

import 'app/screens/auth_screen.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings) {

  switch(routeSettings.name){
    case AuthScreen.routName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const AuthScreen()
      );
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No data here :('),
            ),
          )
      );
  }
}