// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     Future.delayed(Duration(seconds: 3), () {
//       // ignore: use_build_context_synchronously
//       Navigator.pushReplacementNamed(context, "/login");
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff3e665e),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/img/backgound.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Center(
//           child: Hero(
//             tag: "logoHero",
//             child: Image.asset(
//               "assets/img/logo.png",
//               width: 90,
//               height: 90,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void checkLogin() async {
    var pref = await SharedPreferences.getInstance();
    var isLogin = pref.getBool("isLogin") ?? false;

    if (isLogin) {
      Navigator.pushReplacementNamed(context, "/homescreennnn");
    } else {
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      checkLogin();
      // ignore: use_build_context_synchronously
      // Navigator.pushReplacementNamed(context, "/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3e665e),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgound.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Hero(
            tag: "logoHero",
            child: Image.asset(
              "assets/sun.png",
              width: 90,
              height: 90,
              color: Colors.yellow,
            ),
          ),
        ),
      ),
    );
  }
}
