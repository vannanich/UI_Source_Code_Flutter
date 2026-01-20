import 'package:flutter/material.dart';

class StackPracticeInclass extends StatelessWidget {
  const StackPracticeInclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // _buildHeader(context),
            // _buildStackCard(context, isRight: true),
            SizedBox(height: 10),
            _buildStackCard(context),
          ],
        ),
      ),
    );
  }

  // Widget _buildHeader(BuildContext context) {
  //   return SizedBox(
  //     height: 240,
  //     child: Stack(
  //       children: [
  //         Container(
  //           width: double.infinity,
  //           height: 200,
  //           color: Colors.red,
  //         ),
  //         Positioned(
  //           bottom: 10,
  //           left: 20,
  //           child: Container(
  //             width: 100,
  //             height: 100,
  //             color: Colors.black,
  //           ),
  //         )
  //       ],
  //     ),
  //   );

  // return SizedBox(
  //   height: MediaQuery.sizeOf(context).height * 0.40,
  //   child: Stack(
  //     children: [
  //       Container(
  //         height: (MediaQuery.sizeOf(context).height * 0.40) - 100,
  //         width: double.infinity,
  //         decoration: BoxDecoration(
  //           color: Colors.amber,
  //           borderRadius: BorderRadius.only(
  //             bottomRight: Radius.circular(20),
  //             bottomLeft: Radius.circular(20),
  //           ),
  //         ),
  //       ),
  //       Positioned(
  //         bottom: 20,
  //         left: 20,
  //         child: Row(
  //           children: [
  //             Container(
  //               height: 150,
  //               width: 100,
  //               decoration: BoxDecoration(
  //                 color: Colors.blue,
  //                 borderRadius: BorderRadius.circular(20),
  //               ),
  //             ),
  //             SizedBox(width: 10),
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Container(
  //                   width: 120,
  //                   height: 30,
  //                   color: Colors.blue,
  //                 ),
  //                 SizedBox(height: 5),
  //                 Container(
  //                   width: 80,
  //                   height: 15,
  //                   color: Colors.blue,
  //                 ),
  //                 SizedBox(height: 20),
  //                 Container(
  //                   width: 190,
  //                   height: 30,
  //                   color: Colors.blue,
  //                 ),
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ],
  //   ),
  // );
}

// Widget _buildStackCard(BuildContext context) {
//   return Stack(
//     children: [
//       Positioned(
//         bottom: 20,
//         child: Container(
//           width: MediaQuery.sizeOf(context).width,
//           height: 250,
//           color: Colors.red,
//         ),
//       ),
//       Positioned(
//         left: 20,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.black,
//             ),
//           ],
//         ),
//       )
//     ],
//   );
// }

Widget _buildStackCard(BuildContext context, {bool isRight = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SizedBox(
      height: 300,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 250,
              width: MediaQuery.sizeOf(context).width - 40,
            ),
          ),
          Positioned(
            left: isRight ? null : 20,
            right: isRight ? 20 : null,
            child: Column(
              crossAxisAlignment:
                  isRight ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 150,
                ),
                SizedBox(height: 10),
                Container(
                  color: Colors.red,
                  width: 200,
                  height: 20,
                ),
                SizedBox(height: 5),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 10,
                ),
                SizedBox(height: 5),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
// }
