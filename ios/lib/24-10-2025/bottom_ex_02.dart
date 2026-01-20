// import 'package:flutter/material.dart';

// class BottomEx02 extends StatefulWidget {
//   const BottomEx02({super.key});

//   @override
//   State<BottomEx02> createState() => _BottomEx02State();
// }

// class _BottomEx02State extends State<BottomEx02> {
//   double width = 200;
//   double height = 200;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               Container(
//                 width: width,
//                 height: height,
//                 color: Colors.deepPurple[200],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         width += 20;
//                         height += 20;
//                       });
//                     },
//                     child: Icon(
//                       Icons.arrow_upward,
//                       color: Colors.deepPurple[700],
//                     ),
//                     // child: Text("Up"),
//                   ),
//                   SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         width -= 20;
//                         height -= 20;
//                       });
//                     },
//                     // child: Text("Down"),
//                     child: Icon(
//                       Icons.arrow_downward,
//                       color: Colors.deepPurple[700],
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

import 'package:flutter/material.dart';

class BottomEx02 extends StatefulWidget {
  const BottomEx02({super.key});

  @override
  State<BottomEx02> createState() => _BottomEx02State();
}

class _BottomEx02State extends State<BottomEx02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: _buildBox()),
          Expanded(child: _buildButtom()),
        ],
      ),
    );
  }

  double size = 100;
  Color myColor = Colors.red;

  Widget _buildBox() {
    return Center(
      child: Container(
        width: size,
        height: size,
        color: myColor,
      ),
    );
  }

  Widget _buildButtom() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Size : $size",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    size = 100;
                  });
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: size == 100 ? Colors.deepPurple : Colors.grey,
                    width: 3,
                  ),
                ),
                child: Text(
                  "100",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    size = 200;
                  });
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: size == 200 ? Colors.deepPurple : Colors.grey,
                    width: 3,
                  ),
                ),
                child: Text(
                  "200",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    size = 300;
                  });
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: size == 300 ? Colors.deepPurple : Colors.grey,
                    width: 3,
                  ),
                ),
                child: Text(
                  "300",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    size = 400;
                  });
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: size == 400 ? Colors.deepPurple : Colors.grey,
                    width: 3,
                  ),
                ),
                child: Text(
                  "400",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Text(
            "Colors : Red",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 60,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      myColor = Colors.red;
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(
                      color: myColor == Colors.red ? Colors.red : Colors.black,
                      width: 3,
                    ),
                  ),
                  child: Text(
                    "Red",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 60,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      myColor = Colors.blue;
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(
                      color:
                          myColor == Colors.blue ? Colors.blue : Colors.black,
                      width: 3,
                    ),
                  ),
                  child: Text(
                    "Blue",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 60,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      myColor = Colors.purple;
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(
                      color: myColor == Colors.purple
                          ? Colors.purple
                          : Colors.black,
                      width: 3,
                    ),
                  ),
                  child: Text(
                    "Purple",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 60,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      myColor = Colors.orange;
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(
                      color: myColor == Colors.orange
                          ? Colors.orange
                          : Colors.black,
                      width: 3,
                    ),
                  ),
                  child: Text(
                    "Orange",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
