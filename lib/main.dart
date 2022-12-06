import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/router.dart';
import 'app/screens/auth_screen.dart';
import 'components/declarations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: Declarations.backgroundColor,
            colorScheme: const ColorScheme.light(
              primary: Declarations.secondaryColor,
            ),
            appBarTheme: const AppBarTheme(
                elevation: 0,
                iconTheme: IconThemeData(
                    color: Colors.black
                )
            )
        ),
        onGenerateRoute: (settings) => generateRoute(settings) ,
      home: const AuthScreen()
    );
  }
}
