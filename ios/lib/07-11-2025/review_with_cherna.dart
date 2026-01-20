// import 'package:flutter/material.dart';

// class ReviewWithCherna extends StatefulWidget {
//   const ReviewWithCherna({super.key});

//   @override
//   State<ReviewWithCherna> createState() => _ReviewWithChernaState();
// }

// class _ReviewWithChernaState extends State<ReviewWithCherna> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: SafeArea(
//       //   child: Padding(
//       //     padding: const EdgeInsets.all(8.0),
//       //     child: Column(
//       //       children: [
//       //         TextField(
//       //           decoration: InputDecoration(labelText: "Enter Username"),
//       //         ),
//       //         TextField(
//       //           decoration: InputDecoration(
//       //             label: Row(
//       //               children: [
//       //                 Icon(Icons.email),
//       //                 Text("Enter Email :"),
//       //               ],
//       //             ),
//       //           ),
//       //         ),
//       //         SizedBox(height: 20),
//       //         TextField(
//       //           obscureText: true,
//       //           decoration: InputDecoration(
//       //             // labelText: "Must be 8 ",
//       //             hintText: "Enter password ",
//       //             prefixIcon: Icon(Icons.lock),
//       //             suffixIcon: Icon(Icons.visibility),
//       //             enabledBorder: OutlineInputBorder(
//       //               borderRadius: BorderRadius.circular(10),
//       //             ),
//       //             focusedBorder: OutlineInputBorder(
//       //                 borderRadius: BorderRadius.circular(10),
//       //                 borderSide: BorderSide(
//       //                   color: Colors.red,
//       //                 )),
//       //           ),
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       // ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               _buildUsername(),
//               SizedBox(height: 20),
//               _buildPass(),
//               SizedBox(height: 20),
//               Text("test"),
//               _BuildText(
//                   label: "password",
//                   hint: "Enter password",
//                   icon: Icon(Icons.lock),
//                   pwd: Icon(Icons.visibility)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _BuildText({String? label, String? hint, Widget? icon, Widget? pwd}) {
//     return TextField(
//       obscureText: true,
//       decoration: InputDecoration(
//         labelText: label,
//         hintText: hint,
//         prefixIcon: icon,
//         suffixIcon: pwd,
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//   }

//   Widget _buildPass() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         TextField(
//           obscureText: true,
//           decoration: InputDecoration(
//             hintText: "Enter password :",
//             labelText: "password",
//             prefixIcon: Icon(Icons.lock),
//             suffix: Icon(Icons.visibility),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(5),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(5),
//               borderSide: BorderSide(color: Colors.purple),
//             ),
//           ),
//         ),
//         Checkbox(
//           value: true,
//           onChanged: (value) {},
//         )
//       ],
//     );
//   }

//   Widget _buildUsername() {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: "Enter Username :",
//         labelText: "username",
//         prefixIcon: Icon(Icons.people),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//           borderSide: BorderSide(color: Colors.purple),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ReviewWithCherna extends StatefulWidget {
  const ReviewWithCherna({super.key});

  @override
  State<ReviewWithCherna> createState() => _ReviewWithChernaState();
}

class _ReviewWithChernaState extends State<ReviewWithCherna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildForm(
                  label: "Password",
                  hint: "Enter Password :",
                  icon: Icon(
                    Icons.lock,
                  ),
                  pwd: Icon(Icons.visibility)),
            ],
          ),
        ),
      ),
    );
  }

  // _buildForm() {
  //   return TextField(
  //     obscureText: true,
  //     decoration: InputDecoration(
  //       prefixIcon: Icon(Icons.lock),
  //       suffixIcon: Icon(Icons.visibility),
  //       labelText: "Password",
  //       hintText: "Enter your password :",
  //       enabledBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //       focusedBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(20),
  //         borderSide: BorderSide(color: Colors.red),
  //       ),
  //     ),
  //   );
  // }
  Widget _buildForm({String? label, String? hint, Widget? icon, Widget? pwd}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: icon,
        suffixIcon: pwd,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
