import 'package:flutter/material.dart';

class RowEx extends StatelessWidget {
  const RowEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 110,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 110,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: 110,
              height: 200,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class RowEx extends StatelessWidget {
//   const RowEx({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.redAccent,
//       body: SafeArea(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: 200,
//               height: 20,
//               color: Colors.black,
//             ),
//             Container(
//               width: 120,
//               height: 20,
//               color: Colors.pink,
//             ),
//             Container(
//               width: 50,
//               height: 20,
//               color: Colors.blue,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
