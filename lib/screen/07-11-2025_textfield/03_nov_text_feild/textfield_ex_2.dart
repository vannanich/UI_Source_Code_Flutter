import 'package:flutter/material.dart';

class TextfieldEx2 extends StatefulWidget {
  const TextfieldEx2({super.key});

  @override
  State<TextfieldEx2> createState() => _TextfieldEx2State();
}

class _TextfieldEx2State extends State<TextfieldEx2> {
  var emailCtrl = TextEditingController();
  var passCtrl = TextEditingController();

  bool isHide = true;

  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              color: Colors.grey.withValues(alpha: 0.4),
            ),
            Spacer(),
            _buildLogin(),
            Spacer(),
            Container(
              width: double.infinity,
              height: 180,
              color: Colors.grey.withValues(alpha: 0.4),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogin() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _buildCustomTextField(
            hintText: "Enter email",
            ctrl: emailCtrl,
            icon: Icon(
              Icons.email_outlined,
            ),
          ),
          SizedBox(height: 10),
          _buildCustomTextField(
            hintText: "Enter password",
            ctrl: passCtrl,
            icon: Icon(
              Icons.lock_outline,
            ),
            isPwd: true,
          ),
          Checkbox(
            value: isCheck,
            onChanged: (value) {
              setState(() {
                isCheck = value!;
              });
            },
          )
        ],
      ),
    );
  }

  Widget _buildCustomTextField({
    String? hintText,
    Widget? icon,
    bool isPwd = false,
    TextEditingController? ctrl,
  }) {
    return TextField(
      controller: ctrl,
      obscureText: isPwd && isHide ? true : false,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon,
        suffixIcon: isPwd
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isHide = !isHide;
                  });
                },
                child: Icon(Icons.visibility_outlined),
              )
            : null,
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
            width: 3,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
