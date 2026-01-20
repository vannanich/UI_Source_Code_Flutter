import 'package:flutter/material.dart';

class ColumnEx extends StatelessWidget {
  const ColumnEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: 200,
            color: Colors.amber,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: 200,
            color: Colors.red,
            // margin: EdgeInsets.only(bottom: 10),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: 200,
            color: Colors.amber,
          ),
        ],
      ),
    ));
  }
}

// import 'package:flutter/material.dart';

// class ColumnEx extends StatelessWidget {
//   const ColumnEx({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: 100,
//               height: 200,
//               color: Colors.white,
//             ),
//             Container(
//               width: 100,
//               height: 200,
//               color: Colors.red,
//             ),
//             Container(
//               width: 100,
//               height: 200,
//               color: Colors.blue,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
