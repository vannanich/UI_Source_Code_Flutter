import 'package:flutter/material.dart';

class RedoLayoutP1 extends StatelessWidget {
  const RedoLayoutP1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 200,
                          height: 20,
                          color: Colors.red,
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 200,
                          height: 20,
                          color: Colors.red,
                        ),
                        Container(
                          width: 200,
                          height: 2,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: 400,
                  height: 3,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Container(
                  width: 400,
                  height: 200,
                  color: Colors.greenAccent,
                ),
                SizedBox(height: 10),
                Container(
                  width: 400,
                  height: 100,
                  color: Colors.grey,
                ),
                Container(
                  width: 400,
                  height: 3,
                  color: Colors.blue,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 125,
                          height: 100,
                          color: Colors.blue,
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 125,
                          height: 50,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 125,
                          height: 100,
                          color: Colors.blue,
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 125,
                          height: 50,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 125,
                          height: 100,
                          color: Colors.blue,
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 125,
                          height: 50,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 400,
                  height: 3,
                  color: Colors.blue,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Container(
                  width: 400,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 400,
                  height: 3,
                  color: Colors.blue,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Container(
                  width: 400,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 400,
                  height: 10,
                  color: Colors.blue,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
