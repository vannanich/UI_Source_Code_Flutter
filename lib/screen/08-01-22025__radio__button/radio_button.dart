// // ignore_for_file: deprecated_member_use

// import 'package:flutter/material.dart';

// class RadioButton extends StatefulWidget {
//   const RadioButton({super.key});

//   @override
//   State<RadioButton> createState() => _RadioButtonState();
// }

// class _RadioButtonState extends State<RadioButton> {
//   var gender = "female";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Radio Screen"),
//       ),
//       // body: Column(
//       //   children: [
//       //     ListTile(
//       //       onTap: () {
//       //         setState(() {
//       //           gender = "female";
//       //         });
//       //       },
//       //       leading: Radio(
//       //         value: "female",
//       //         groupValue: gender,
//       //         activeColor: Colors.blue,
//       //         onChanged: (value) {},
//       //       ),
//       //       title: Text("Female"),
//       //     ),
//       //     ListTile(
//       //       onTap: () {
//       //         setState(() {
//       //           gender = "male";
//       //         });
//       //       },
//       //       leading: Radio(
//       //         value: "male",
//       //         groupValue: gender,
//       //       ),
//       //       title: Text("Male"),
//       //     ),
//       //     ListTile(
//       //       onTap: () {
//       //         setState(() {
//       //           gender = "other";
//       //         });
//       //       },
//       //       leading: Radio(
//       //         value: "other",
//       //         groupValue: gender,
//       //       ),
//       //       title: Text("Prefer not to"),
//       //     ),

//       //   ],
//       // ),
//       body: Center(
//         child: RiveAnimation.asset(
//           'assets/animation.riv',
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rive Screen"),
      ),
      body: Center(
        child: Image.asset(
          'assets/animation/124-188-moon-and-stars.riv',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}


//  - build app
//    - apk
//    - ios: github , itune , sideload 