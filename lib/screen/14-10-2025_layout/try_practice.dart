import 'package:flutter/material.dart';

class TryPractice extends StatelessWidget {
  const TryPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 200,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          // color: Colors.grey,
                          margin: EdgeInsets.symmetric(vertical: 20),
                        ),
                        Container(
                          width: 200,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          // color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      height: 50,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      height: 50,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Column(
                  children: [
                    Container(
                      width: 400,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey,
                      ),
                      // color: Colors.blueGrey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 30,
                              color: Colors.red,
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 200,
                              height: 30,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 400,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey,
                      ),
                      // color: Colors.blueGrey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 200,
                              height: 30,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 30,
                          color: Colors.amber,
                        ),
                        Container(
                          width: 200,
                          height: 10,
                          color: Colors.amber,
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          width: 90,
                          height: 10,
                          color: Colors.amber,
                          margin: EdgeInsets.only(left: 55),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.greenAccent,
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 40,
                          color: Colors.greenAccent,
                          margin: EdgeInsets.only(left: 30),
                        ),
                      ],
                    ),
                    SizedBox(height: 80),
                    Row(
                      children: [
                        Container(
                          width: 120,
                          height: 2,
                          color: Colors.grey,
                        ),
                        Container(
                          width: 120,
                          height: 10,
                          color: Colors.redAccent,
                          margin: EdgeInsets.only(left: 20),
                        ),
                        Container(
                          width: 120,
                          height: 2,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 400,
                      height: 70,
                      color: Colors.blueGrey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 100,
                              color: Colors.red,
                              margin: EdgeInsets.only(left: 20),
                            ),
                            Container(
                              width: 200,
                              height: 10,
                              color: Colors.red,
                              margin: EdgeInsets.only(left: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class TryPractice extends StatelessWidget {
//   const TryPractice({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // 👇 Profile placeholder box
//                   Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: Colors.grey[300],
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   const SizedBox(width: 10),

//                   // 👇 Text placeholders
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           height: 10,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: Colors.grey[300],
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Container(
//                           height: 10,
//                           width: 200,
//                           decoration: BoxDecoration(
//                             color: Colors.grey[300],
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Container(
//                           height: 10,
//                           width: 150,
//                           decoration: BoxDecoration(
//                             color: Colors.grey[300],
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
