import 'package:flutter/material.dart';

class TestAddData extends StatefulWidget {
  const TestAddData({super.key});

  @override
  State<TestAddData> createState() => _TestAddDataState();
}

class _TestAddDataState extends State<TestAddData> {
  var titleCtrl = TextEditingController();
  var subTitleCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.arrow_back,
          ),
          Text("Add Data"),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: titleCtrl,
              decoration: InputDecoration(
                hintText: "Enter Title ",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Sub title",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("save data"),
            )
          ],
        ),
      ),
    );
  }
}
