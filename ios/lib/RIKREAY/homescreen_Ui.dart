// import 'package:flutter/material.dart';

// class HomescreenUi extends StatelessWidget {
//   const HomescreenUi({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             _buildAppbar(),
//             SizedBox(
//               height: 60,
//             ),
//             _buildHeader(),
//             SizedBox(
//               height: 60,
//             ),
//             _buildLittleBox(),
//             Spacer(),
//             _buildFooter(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildAppbar() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           CircleAvatar(
//             radius: 20,
//             backgroundColor: Colors.white,
//             child: Icon(Icons.menu, color: Colors.green.shade600),
//           ),
//           Text(
//             'MoodTrack',
//             style: TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: Colors.green.shade700,
//             ),
//           ),
//           CircleAvatar(
//             radius: 20,
//             backgroundColor: Colors.white,
//             child: Icon(Icons.notifications_none, color: Colors.green.shade600),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Center(
//       child: Column(
//         children: [
//           Text(
//             "How do you feel ?",
//             style: TextStyle(
//               color: const Color.fromARGB(255, 115, 165, 117),
//               fontWeight: FontWeight.bold,
//               fontSize: 25,
//             ),
//           ),
//           SizedBox(
//             height: 60,
//           ),
//           Image.asset(
//             "assets/sun.png",
//             width: 160,
//             height: 160,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildLittleBox() {
//     return Center(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 180,
//                 height: 130,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 20),
//                     Image.asset(
//                       "assets/sun (1).png",
//                       width: 70,
//                       height: 70,
//                       fit: BoxFit.contain,
//                     ),
//                     Text(
//                       "Happy",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 width: 180,
//                 height: 130,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 2),
//                     Image.asset(
//                       "assets/cloud.png",
//                       width: 100,
//                       height: 100,
//                       fit: BoxFit.contain,
//                     ),
//                     Text(
//                       "Angry",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 180,
//                 height: 130,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 2),
//                     Image.asset(
//                       "assets/cloud (1).png",
//                       width: 100,
//                       height: 100,
//                       fit: BoxFit.contain,
//                     ),
//                     Text(
//                       "Calm",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 width: 180,
//                 height: 130,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 20),
//                     Image.asset(
//                       "assets/sad.png",
//                       width: 80,
//                       height: 80,
//                       fit: BoxFit.contain,
//                     ),
//                     Text(
//                       "Sad",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFooter() {
//     return Container(
//       height: 80,
//       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(24),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.08),
//             blurRadius: 12,
//             offset: const Offset(0, -4),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           _buildNavItem(Icons.home, true),
//           _buildNavItem(Icons.search, false),
//           _buildNavItem(Icons.add_circle_outline, false),
//           _buildNavItem(Icons.favorite_border, false),
//           _buildNavItem(Icons.person_outline, false),
//         ],
//       ),
//     );
//   }

//   Widget _buildNavItem(IconData icon, bool isActive) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: isActive
//           ? BoxDecoration(
//               color: Colors.green.withOpacity(0.15),
//               shape: BoxShape.circle,
//             )
//           : null,
//       child: Icon(
//         icon,
//         color: isActive ? Colors.green.shade600 : Colors.grey.shade600,
//         size: 26,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomescreenUi extends StatelessWidget {
  const HomescreenUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 237, 237, 156), // Soft greenish background
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildCustomAppBar(),
            SizedBox(height: 50),
            _buildHeader(),
            SizedBox(height: 80),
            _buildFeelingsGrid(),
            Spacer(),
            _buildCustomBottomNav(),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(Icons.menu, color: Colors.green.shade600),
          ),
          Text(
            'MoodTrack',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade700,
            ),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(Icons.notifications_none, color: Colors.green.shade600),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Text(
          "How do you feel?",
          style: TextStyle(
            color: Colors.green.shade700,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        SizedBox(height: 50),
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.1),
                blurRadius: 15,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: ClipOval(
            child: Image.asset(
              "assets/sun.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFeelingsGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              _buildFeelingCard(
                  "Happy", "assets/sun (1).png", Colors.yellow.shade300),
              SizedBox(width: 20),
              _buildFeelingCard(
                  "Angry", "assets/cloud.png", Colors.red.shade200),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              _buildFeelingCard(
                  "Calm", "assets/cloud (1).png", Colors.blue.shade100),
              SizedBox(width: 20),
              _buildFeelingCard("Sad", "assets/sad.png", Colors.grey.shade300),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeelingCard(String label, String assetPath, Color bgColor) {
    return Expanded(
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: bgColor.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  assetPath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomBottomNav() {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(Icons.home, true),
          _buildNavItem(Icons.search, false),
          _buildNavItem(Icons.add_circle_outline, false),
          _buildNavItem(Icons.favorite_border, false),
          _buildNavItem(Icons.person_outline, false),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, bool isActive) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: isActive
          ? BoxDecoration(
              color: Colors.green.withOpacity(0.15),
              shape: BoxShape.circle,
            )
          : null,
      child: Icon(
        icon,
        color: isActive ? Colors.green.shade600 : Colors.grey.shade600,
        size: 26,
      ),
    );
  }
}
