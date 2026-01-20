import 'package:flutter/material.dart';

class ListViewBuilderEx extends StatefulWidget {
  const ListViewBuilderEx({super.key});

  @override
  State<ListViewBuilderEx> createState() => _ListViewBuilderExState();
}

class _ListViewBuilderExState extends State<ListViewBuilderEx> {
  var listColor = [
    Colors.yellow,
    Colors.orangeAccent,
    Colors.red,
    Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              color: listColor[index % 4],
            );
          },
        ),
      ),
    );
  }
}
