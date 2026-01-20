// import 'package:flutter/material.dart';

// class StackExample2 extends StatelessWidget {
//   const StackExample2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           _buildheader(context),
//           Expanded(child: _buildbody()),
//         ],
//       ),
//     );
//   }

//   Widget _buildheader(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: MediaQuery.sizeOf(context).height * 0.5, //size of screen
//       color: Colors.red,
//       child: Stack(
//         children: [
//           Container(
//             width: double.infinity,
//             // width: MediaQuery.sizeOf(context).width,
//             height: (MediaQuery.sizeOf(context).height * 0.5) - 100,
//             color: Colors.blue,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildbody() {
//     return Container(
//       color: Colors.grey,
//     );
//   }
// }
import 'package:flutter/material.dart';

class StackExample2 extends StatelessWidget {
  const StackExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildHeader(context),
          _buildBody(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: MediaQuery.sizeOf(context).height * 0.4,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: (MediaQuery.sizeOf(context).height * 0.4) - 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1673177667569-e3321a8d8256?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y292ZXIlMjBwaG90b3xlbnwwfHwwfHx8MA%3D%3D&fm=jpg&q=60&w=3000",
                  )),
            ),
            child: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  Icon(
                    Icons.notification_add,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            // color: Colors.blue,
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://www.lemon8-app.com/seo/image?item_id=7313686736574562821&index=2&sign=6f9bf375c338dd0aa38681af73fac14e",
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }

  // Widget _buildBody() {
  //   return Container(
  //     color: Colors.grey,
  //     child: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text(
  //                 "Experience",
  //                 style: TextStyle(
  //                   fontSize: 20,
  //                 ),
  //               ),
  //               Text(
  //                 "Education",
  //                 style: TextStyle(
  //                   fontSize: 20,
  //                 ),
  //               ),
  //               Text(
  //                 "Lala",
  //                 style: TextStyle(
  //                   fontSize: 20,
  //                 ),
  //               ),
  //               Text(
  //                 "IdunKnow",
  //                 style: TextStyle(
  //                   fontSize: 20,
  //                 ),
  //               ),
  //             ],
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Container(
  //               width: 80,
  //               height: 80,
  //               decoration: BoxDecoration(
  //                 color: Colors.blue,
  //                 borderRadius: BorderRadius.circular(20),
  //               ),
  //             ),

  //           )
  //         ],
  //       ),
  //     ),
  //   );

  // }
  // Widget _buildBody(BuildContext context) {
  //   return SizedBox(
  //     height: 300,
  //     child: Stack(
  //       alignment: Alignment.center,
  //       children: [
  //         Positioned(
  //           top: 0,
  //           child: Container(
  //             width: MediaQuery.sizeOf(context).width,
  //             color: Colors.red,
  //             height: 200,
  //           ),
  //         ),
  //         Positioned(
  //           top: 120,
  //           child: Column(
  //             children: [
  //               Container(
  //                 width: 200,
  //                 color: Colors.blue,
  //                 height: 100,
  //               ),
  //               SizedBox(height: 10),
  //               Container(
  //                 width: 200,
  //                 color: Colors.blue,
  //                 height: 20,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  // Widget _buildBody(BuildContext context) {
  //   return SizedBox(
  //     height: 300,
  //     child: Stack(
  //       alignment: Alignment.center,
  //       children: [
  //         Positioned(
  //           top: 0,
  //           child: Container(
  //             width: MediaQuery.sizeOf(context).width,
  //             height: 200,
  //             color: Colors.red,
  //           ),
  //         ),
  //         Positioned(
  //           top: 120,
  //           child: Column(
  //             children: [
  //               Container(
  //                 width: 200,
  //                 height: 90,
  //                 color: Colors.blue,
  //               ),
  //               SizedBox(height: 10),
  //               Container(
  //                 width: 200,
  //                 height: 20,
  //                 color: Colors.blue,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  Widget _buildBody(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 130,
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 70,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Container(
                  width: 200,
                  height: 20,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
