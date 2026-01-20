import 'package:flutter/material.dart';

class Champaign extends StatelessWidget {
  const Champaign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              _builHeader(),
              SizedBox(height: 15),
              // body(related on card)
              _buildCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _builHeader() {
    return Text(
      "All Campaign",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    );
  }

  Widget _buildCard() {
    return Container(
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.percent),
                Spacer(),
                Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.green,
                        width: 2,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Active",
                      style: TextStyle(
                        color: Colors.green[900],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          )
        ],
      ),
    );
  }

  // Widget _buildCard() {
  //   return Column(
  //     children: [
  //       Container(
  //         width: double.infinity,
  //         height: 350,
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.circular(20),
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.all(10.0),
  //           child: Row(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Icon(
  //                 Icons.percent,
  //               ),
  //               Spacer(),
  //               Container(
  //                 width: 100,
  //                 height: 30,
  //                 decoration: BoxDecoration(
  //                   color: Colors.green[100],
  //                   borderRadius: BorderRadius.circular(10),
  //                   border: Border.all(
  //                     color: Colors.green,
  //                   ),
  //                 ),
  //                 child: Padding(
  //                   padding: const EdgeInsets.all(3.0),
  //                   child: Row(
  //                     children: [
  //                       Icon(
  //                         Icons.panorama_horizontal_select_outlined,
  //                         color: Colors.green,
  //                       ),
  //                       SizedBox(width: 10),
  //                       Text(
  //                         "Active",
  //                         style: TextStyle(
  //                           fontWeight: FontWeight.bold,
  //                           fontSize: 15,
  //                           color: Colors.green,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),

  //         ),
  //       ),
  //     ],
  //   );
  // }
}
