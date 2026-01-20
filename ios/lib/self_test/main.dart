import 'package:flutter/material.dart';
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
        scaffoldBackgroundColor: const Color.fromARGB(255, 22, 18, 78),

        textTheme: GoogleFonts.spaceGroteskTextTheme(),
      ),
      home: OwnAppHomescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
