import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFielEx extends StatefulWidget {
  const TextFielEx({super.key});

  @override
  State<TextFielEx> createState() => _TextFielExState();
}

class _TextFielExState extends State<TextFielEx> {
  // TextEditingController textCtrl = TextEditingController();
  var textCtrl = TextEditingController();
  var textCtrl2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textCtrl,
                obscureText: false,
                obscuringCharacter: "*",
                // keyboardType: TextInputType.datetime,
                // keyboardType: TextInputType.phone,
                onChanged: (value) {
                  print("enter : $value");
                },
                onSubmitted: (value) {
                  print("u submitted : $value");
                },
                textCapitalization: TextCapitalization.words,
                style: GoogleFonts.preahvihear(
                  fontSize: 15,
                ),
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
              // ElevatedButton(
              //   onPressed: () {
              //     print("data in texted : ${textCtrl.text}");
              //     print("data in texted : ${textCtrl2.text}");
              //   },
              //   child: Text("submit"),
              // ),
              SizedBox(height: 20),
              TextField(
                controller: textCtrl2,
                obscureText: false,
                obscuringCharacter: "*",
                // keyboardType: TextInputType.datetime,
                // keyboardType: TextInputType.phone,
                textCapitalization: TextCapitalization.words,
                style: GoogleFonts.preahvihear(
                  fontSize: 15,
                ),
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
              ElevatedButton(
                onPressed: () {
                  print("data in texted : ${textCtrl.text}");
                  print("data in texted : ${textCtrl2.text}");
                },
                child: Text("submit"),
              ),
              Transform.scale(
                scale: 2,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
