import 'package:flutter/material.dart';

class VannanichPractice04 extends StatefulWidget {
  const VannanichPractice04({super.key});

  @override
  State<VannanichPractice04> createState() => _VannanichPractice04State();
}

class _VannanichPractice04State extends State<VannanichPractice04> {
  var textctr = TextEditingController();
  var textctr2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(height: 20),
              _buildDes(),
              // SizedBox(height: 50),
              Spacer(),
              _buildBody(),
              Spacer(),
              // SizedBox(height: 50),
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('assets/phjumbin.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "KHOR AV STORE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              "By Vanna Nich",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "SIGN IN OR CREATE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        Text(
          "AN ACCOUNT",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        Text(
          "Hello beginner developers and IT students master coding skills through gamiffied quizzes and micro-challenges.",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 130,
                height: 1,
                color: Colors.black,
              ),
              Spacer(),
              Text("or continue with"),
              Spacer(),
              Container(
                width: 130,
                height: 1,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  side: BorderSide(
                width: 3,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/google.png",
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(width: 15),
                  Text("Continue with Google"),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account ? ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "Sign Up ",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        TextField(
          controller: textctr,
          onChanged: (value) {
            print("Ur on change message : $value");
          },
          decoration: InputDecoration(
            hintText: "Enter your email ",
            labelText: "Email address",
            // hintStyle: GoogleFonts.preahvihear(
            //   color: Colors.black.withValues(alpha: 0.5),
            // ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/icons/emailIIcon.png",
                width: 10,
                height: 10,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: textctr2,
          onChanged: (value) {
            print("Ur on change message : $value");
          },
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Enter your password ",
            labelText: "Password",
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/icons/icons8-password-24.png",
                width: 10,
                height: 10,
              ),
            ),
            suffixIcon: Icon(Icons.visibility),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey,
                width: 2,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (value) {},
              activeColor: Colors.blueGrey,
            ),
            Text(
              "Remember me ?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Spacer(),
            Text(
              "Forgot Password ?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                print("ur email is : $textctr");
                print("ur password is : $textctr2");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text("CONTINUE"),
            ),
            Spacer(),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  // backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  side: BorderSide(
                    width: 2,
                  )),
              child: Text("AS GUEST"),
            ),
          ],
        ),
      ],
    );
  }
}
