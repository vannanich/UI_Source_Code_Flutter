import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/06-12-2025/second_screen.dart';
import 'package:flutter_application_2/screen/06-12-2025/third_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var textCtrl = TextEditingController();

  String data = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: textCtrl,
              decoration: InputDecoration(
                hintText: "Enter some text",
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(a: textCtrl.text),
                  ),
                );
                // Navigator.pushNamed(context, "second");
              },
              child: Text("Go go second screen"),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdScreen(),
                    settings: RouteSettings(arguments: textCtrl.text),
                  ),
                );
                debugPrint("result from screen 3 : $result");
                // Navigator.pushNamed(context, "second");
              },
              child: Text("Go go third screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdScreen(),
                    settings: RouteSettings(arguments: textCtrl.text),
                  ),
                ).then(
                  (value) {
                    print("data : $value");
                  },
                );
                // Navigator.pushNamed(context, "second");
              },
              child: Text("Go go third screen (method 2)"),
            ),
            Text("data from third screen $data"),
          ],
        ),
      ),
    );
  }
}
