import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Text(
          "Hello vlog , Welcome to my guys . Cruel Summer is the hardest. Then every single one of Taylor's songs with really low vocals, since I'm a soprano. Then Shake It Off, with its fast beat that's more shout than",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            backgroundColor: Colors.red,
            fontWeight: FontWeight.w800,
            // wordSpacing: 20,
            // letterSpacing: 2,
            // height: 1.5,
            // decoration: TextDecoration.lineThrough,
            // decorationThickness: 5,
            // decorationStyle: TextDecorationStyle.solid,
          ),
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
