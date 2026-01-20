import 'package:flutter/material.dart';

class BottomExTest extends StatefulWidget {
  const BottomExTest({super.key});

  @override
  State<BottomExTest> createState() => _BottomExTestState();
}

class _BottomExTestState extends State<BottomExTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: _buildBox()),
          Expanded(child: _buildButtom()),
        ],
      ),
    );
  }

  double size = 100;
  Color myColor = Colors.red;

  Widget _buildBox() {
    return Center(
      child: Container(
        width: size,
        height: size,
        color: myColor,
      ),
    );
  }

  Widget _buildButtom() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Size : $size",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      size = 100;
                    },
                  );
                },
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(
                      color: size == 100 ? Colors.red : Colors.black,
                      width: 2,
                    )),
                child: Text(
                  "100",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    size = 200;
                  });
                },
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(
                      color: size == 200 ? Colors.red : Colors.black,
                      width: 2,
                    )),
                child: Text(
                  "200",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    size = 300;
                  });
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: size == 300 ? Colors.red : Colors.black,
                    width: 2,
                  ),
                ),
                child: Text(
                  "300",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    size = 400;
                  });
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: size == 400 ? Colors.red : Colors.black,
                    width: 2,
                  ),
                ),
                child: Text(
                  "400",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Colors : Red",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    myColor = Colors.red;
                  });
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: myColor == Colors.red ? Colors.red : Colors.black,
                    width: 3,
                  ),
                ),
                child: Text(
                  "Red",
                ),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    myColor = Colors.deepPurpleAccent;
                  });
                },
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.deepPurpleAccent,
                    backgroundColor: Colors.deepPurpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(
                      color: myColor == Colors.deepPurpleAccent
                          ? Colors.deepPurpleAccent
                          : Colors.red,
                    )),
                child: Text("purple"),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    myColor = Colors.blue;
                  });
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: myColor == Colors.blue ? Colors.blue : Colors.black,
                  ),
                ),
                child: Text("blue"),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      myColor = Colors.orange;
                    },
                  );
                },
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(
                      color: myColor == Colors.orange
                          ? Colors.orange
                          : Colors.black,
                    ),
                    backgroundColor: Colors.orangeAccent,
                    foregroundColor: Colors.orangeAccent),
                child: Text("Orange"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
