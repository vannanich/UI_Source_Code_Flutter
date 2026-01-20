// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff3e665e),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Hero(
//                 tag: "logoHero",
//                 child: Image.asset(
//                   "assets/img/logo.png",
//                   width: 45,
//                   height: 45,
//                   color: Colors.white,
//                 ),
//               ),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.pushReplacementNamed(context, "/homescreennnn");
//                   },
//                   child: Text("Login"),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void login() async {
    var pref = await SharedPreferences.getInstance();
    pref.setBool("isLogin", true);

    Navigator.pushReplacementNamed(context, "/homescreennnn");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3e665e),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Hero(
                tag: "logoHero",
                child: Image.asset(
                  "assets/logo.png",
                  width: 45,
                  height: 45,
                  color: Colors.white,
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    login();
                    // Navigator.pushReplacementNamed(context, "/homescreennnn");
                  },
                  child: Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
