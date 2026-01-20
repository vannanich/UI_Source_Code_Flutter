import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/app_routes.dart';
import 'package:flutter_application_2/screen/11-12-2025/screen1_example.dart';
import 'package:flutter_application_2/screen/11-12-2025/screen2_example.dart';
import 'package:flutter_application_2/screen/Personal/own_app_homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // scaffoldBackgroundColor: Color.fromARGB(255, 237, 237, 156),
        // scaffoldBackgroundColor: const Color.fromARGB(255, 221, 213, 150),
        // scaffoldBackgroundColor: const Color.fromARGB(255, 237, 237, 156),
        // scaffoldBackgroundColor: const Color.fromARGB(255, 22, 18, 78),

        textTheme: GoogleFonts.spaceGroteskTextTheme(),
      ),
      home: Screen1Example(),
      // it meant first sreen iis screen1
      initialRoute: AppRoutes.screen1,
      routes: {
        //  when we push , where did it go ?
        AppRoutes.screen1: (context) => Screen1Example(),
        AppRoutes.screen2: (context) => Screen2Example(),
        AppRoutes.homescreen: (context) => OwnAppHomescreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

// const Color.fromARGB(255, 28, 4, 69),
