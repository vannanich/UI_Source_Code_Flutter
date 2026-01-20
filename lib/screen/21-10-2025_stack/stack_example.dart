import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 400,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                bottom: 10,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
              ),
              Positioned(
                right: 30,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.yellow,
                ),
              ),
              Positioned(
                left: 20,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
