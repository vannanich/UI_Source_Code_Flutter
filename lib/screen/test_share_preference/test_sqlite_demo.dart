import 'package:flutter/material.dart';

class TestSqliteDemo extends StatefulWidget {
  const TestSqliteDemo({super.key});

  @override
  State<TestSqliteDemo> createState() => _TestSqliteDemoState();
}

class _TestSqliteDemoState extends State<TestSqliteDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile();
            },
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/addData");
              },
              child: Text("Write to db"),
            ),
          )
        ],
      ),
    );
  }
}
