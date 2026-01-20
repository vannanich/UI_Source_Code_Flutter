import 'package:flutter/material.dart';

class RichtextEx extends StatelessWidget {
  const RichtextEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: RichText(
          text: TextSpan(
              text:
                  "Hello vlogs , welcome to my guys . Cruel Summer is the hardest. Then every single one of Taylor's songs with really low vocals, since I'm a soprano.  ",
              style: TextStyle(color: Colors.white, fontSize: 20),
              children: [
                TextSpan(
                  text: "Then Shake It Off,",
                  style: TextStyle(color: Colors.red),
                ),
                TextSpan(
                  text: "with its fast beat that's more shout than song.",
                )
              ]),
        ),
      ),
    );
  }
}
