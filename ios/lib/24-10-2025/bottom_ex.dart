import 'package:flutter/material.dart';

class BottomEx extends StatelessWidget {
  const BottomEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // eleveted bottom
            SizedBox(
              width: 185,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  print("Button is clicked");
                },
                onLongPress: () {
                  print("long press");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[200],
                  foregroundColor: Colors.black,
                  elevation: 10,
                  shadowColor: Colors.deepPurple[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // side: BorderSide(
                  //   color: Colors.black,
                  //   width: 2,
                  // ),
                ),
                child: Text(
                  "Elevated button",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 45,
              width: 185,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // hide border u can use border color has the same bg of bottom and u can color = Colors.bgButtomColor it will be hidden the border of bottom
                    side: BorderSide(
                      color: Colors.deepPurple,
                      width: 2,
                    )),
                child: Text(
                  "outline button",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Text Button",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            )
          ],
        ),
      ),
    );
  }
}
