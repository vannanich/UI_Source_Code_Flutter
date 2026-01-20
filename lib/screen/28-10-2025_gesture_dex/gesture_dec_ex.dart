import 'package:flutter/material.dart';

class GestureDecEx extends StatefulWidget {
  const GestureDecEx({super.key});

  @override
  State<GestureDecEx> createState() => _GestureDecExState();
}

class _GestureDecExState extends State<GestureDecEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () {
              print("Button is click ");
            },
            onDoubleTap: () {
              print("double tab");
            },
            onLongPress: () {
              print("This widget is long press !");
            },
            child: Container(
              width: 150,
              height: 40,
              color: Colors.red,
              child: Center(
                child: Text(
                  "click here",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
