// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text("Homescreen"),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Homescreen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var pref = await SharedPreferences.getInstance();
            pref.remove("isLogin");
            Navigator.pushReplacementNamed(context, "/login");
          },
          child: Text("Logout"),
        ),
      ),
    );
  }
}
