import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class P4test extends StatefulWidget {
  const P4test({super.key});

  @override
  State<P4test> createState() => _P4testState();
}

class _P4testState extends State<P4test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildheader(),
              SizedBox(height: 20),
              __buildnearheader(),
              SizedBox(height: 20),
              _buildForm(),
              SizedBox(height: 20),
              _buildOutline(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildheader() {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage('assets/phjumbin.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Hii"),
              Text("data")
              // Container(
              //   width: 150,
              //   height: 20,
              //   color: Colors.red,
              // ),
              // SizedBox(height: 10),
              // Container(
              //   width: 150,
              //   height: 20,
              //   color: Colors.red,
              // ),
            ],
          ),
        ),
      ],
    );
  }

  Widget __buildnearheader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 20,
          color: Colors.red,
        )
      ],
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        TextField(
          obscureText: false,
          decoration: InputDecoration(
            hintText: "បញ្ជូល Email  របស់អ្នក :",
            labelText: "Email",
            hintStyle: GoogleFonts.preahvihear(
              color: Colors.black.withValues(alpha: 0.5),
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/icons/emailIIcon.png",
                width: 10,
                height: 10,
              ),
            ),
            // prefixIcon: Icon(Icons.email),
            suffixIcon: Icon(Icons.visibility),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepPurpleAccent,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOutline() {
    return Column(
      // children: [
      //   Expanded(
      //     child: OutlinedButton(
      //       onPressed: () {},
      //       style: OutlinedButton.styleFrom(
      //         side: BorderSide(
      //           width: 2,
      //           color: Colors.red,
      //         ),
      //       ),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(
      //             Icons.email,
      //           ),
      //           SizedBox(width: 10),
      //           Text("Goggle"),
      //           Transform.scale(
      //             scale: 1.2,
      //             child: Checkbox(
      //               value: true,
      //               onChanged: (value) {},
      //               activeColor: Colors.red,
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   )
      // ],
      // children: [
      //   Expanded(
      //     child: OutlinedButton(
      //       onPressed: () {},
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.email),
      //           Text("Google"),
      //         ],
      //       ),
      //     ),
      //   ),
      // ],

      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                Text("Hii"),
                Image.asset(
                  "assets/icons/google.png",
                  // width: 10,
                  // height: 10,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
