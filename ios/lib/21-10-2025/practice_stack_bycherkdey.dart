// import 'package:flutter/material.dart';

// class PracticeStackBycherkdey extends StatelessWidget {
//   const PracticeStackBycherkdey({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // header
//               _buildheader(context),
//               // menu
//               _buildMenu(),
//               // stackCard
//               SizedBox(height: 40),
//               _builStackCard(context),
//               _builStackCard(context),
//               _builStackCard(context),
//               _builStackCard(context),
//               _builStackCard(context),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildMenu() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//               // width: 130,
//               height: 30,
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//           ),
//           SizedBox(width: 10),
//           Expanded(
//             child: Container(
//               // width: 130,
//               height: 30,
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//           ),
//           SizedBox(width: 10),
//           Expanded(
//             child: Container(
//               // width: 130,
//               height: 30,
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// // {bool isRight = false} name parameter
//   Widget _builStackCard(BuildContext context ,{bool isRight = false} ) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: SizedBox(
//         height: 360,
//         width: MediaQuery.sizeOf(context).width,
//         child: Stack(
//           children: [
//             Positioned(
//               bottom: 0,
//               child: Container(
//                 width: MediaQuery.sizeOf(context).width - 15,
//                 height: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Positioned(
//                     left: 10,
//                     child: Container(
//                       width: 150,
//                       height: 180,
//                       decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//                     width: 250,
//                     height: 30,
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Container(
//                     width: 150,
//                     height: 20,
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Container(
//                     width: 150,
//                     height: 20,
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildheader(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.sizeOf(context).height * 0.4,
//       // color: Colors.black,
//       child: Stack(
//         children: [
//           Container(
//             height: (MediaQuery.sizeOf(context).height * 0.4) - 80,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Container(
//                   width: 130,
//                   height: 30,
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 Spacer(),
//                 Container(
//                   width: 30,
//                   height: 30,
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 Container(
//                   width: 30,
//                   height: 30,
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 20,
//             left: 20,
//             child: Row(
//               children: [
//                 Container(
//                   width: 100,
//                   height: 150,
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: 100,
//                       height: 20,
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Container(
//                       width: 80,
//                       height: 20,
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                     SizedBox(height: 30),
//                     Container(
//                       width: 180,
//                       height: 30,
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class PracticeStackBycherkdey extends StatelessWidget {
  const PracticeStackBycherkdey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(context),
            _buildMenuItem(),
            SizedBox(height: 20),
            _buildStackCard(context),
            SizedBox(height: 20),
            _buildStackCard(context, isRight: true),
            SizedBox(height: 20),
            _buildStackCard(context),
            SizedBox(height: 20),
            _buildStackCard(context, isRight: true),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.40,
      child: Stack(
        children: [
          Container(
            height: (MediaQuery.sizeOf(context).height * 0.40) - 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 30,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 80,
                      height: 15,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 190,
                      height: 30,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              height: 50,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              color: Colors.blue,
              height: 50,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              color: Colors.blue,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }

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
}



// a =20
// b =30

// if (a > b){
//    print("a is greater than b")
// }
// else{
//   print("b is greater than a")
// }
// condition? true : false
// a > b? a : b
  