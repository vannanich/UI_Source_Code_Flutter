import 'package:flutter/material.dart';

class CorrectP4 extends StatefulWidget {
  const CorrectP4({super.key});

  @override
  State<CorrectP4> createState() => _CorrectP4State();
}

class _CorrectP4State extends State<CorrectP4> {
  var emailCtr = TextEditingController();
  var passCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                color: Colors.red,
              ),
              Spacer(),
              _buildLogin(),
              Spacer(),
              Container(
                width: double.infinity,
                height: 180,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogin() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _buildCustomText(hintText: "Enter email :", icon: Icon(Icons.email)),
          SizedBox(height: 10),
          _buildCustomText(
            hintText: "Enter password : ",
            icon: Icon(Icons.lock),
            isPwd: true,
          ),
        ],
      ),
    );
  }

  Widget _buildCustomText(
      {String? hintText, Widget? icon, bool isPwd = false,}) {
    return TextField(
      obscureText: isPwd,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon,
        suffixIcon: isPwd ? Icon(Icons.visibility) : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            width: 2,
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            width: 2,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
