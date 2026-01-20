import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/flashScreen/home_screen.dart';
import 'package:flutter_application_2/screen/flashScreen/login_screen.dart';
import 'package:flutter_application_2/screen/flashScreen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SqliteDemo(),
      initialRoute: "/home",
      routes: {
        // "/home": (context) => DatetimepickerExample(),
        "/home": (context) => SplashScreen(),
        // "/home": (context) => SplashScreen(),
        // "/addData": (context) => AddDataScreen(),
        "/homescreennnn": (context) => HomeScreen(),
        "/login": (context) => LoginScreen(),
      },
    );
  }
}
