import 'package:flutter/material.dart';

class RowcolEx extends StatelessWidget {
  const RowcolEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // first children or first column
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 250,
                          height: 20,
                          color: Colors.lightBlue,
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 250,
                          height: 20,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 400,
                  height: 5,
                  color: Colors.cyan,
                  margin: EdgeInsets.symmetric(vertical: 20),
                ),
                Container(
                  height: 200,
                  color: Colors.deepPurple,
                ),
                SizedBox(height: 10),
                Container(
                  height: 100,
                  color: Colors.lightGreenAccent,
                ),
                Container(
                  height: 3,
                  color: Colors.grey,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                // width: 100,
                                height: 100,
                                color: Colors.amber,
                              ),
                              SizedBox(height: 10),
                              Container(
                                // width: 100,
                                height: 30,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            // width: 100,
                            height: 100,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Container(
                            // width: 100,
                            height: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            // width: 100,
                            height: 100,
                            color: Colors.red,
                          ),
                          SizedBox(height: 10),
                          Container(
                            // width: 100,
                            height: 30,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 3,
                  color: Colors.greenAccent,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Container(
                  height: 100,
                  color: Colors.pink,
                ),
                Container(
                  height: 3,
                  color: Colors.greenAccent,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Container(
                  height: 150,
                  color: Colors.white,
                ),
                SizedBox(height: 5),
                Container(
                  height: 110,
                  color: Colors.red,
                  margin: EdgeInsets.only(top: 4),
                ),
                Container(
                  height: 10,
                  color: Colors.grey,
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
