import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/test_share_preference/test_add_data.dart';
import 'package:flutter_application_2/screen/test_share_preference/test_sqlite_demo.dart';

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
        "/home": (context) => TestSqliteDemo(),
        "/addData": (context) => TestAddData(),
      },
    );
  }
}
