import 'package:flutter/material.dart';

class Calulator extends StatefulWidget {
  const Calulator({super.key});

  @override
  State<Calulator> createState() => _CalulatorState();
}

class _CalulatorState extends State<Calulator> {
  final List<String> _text = [
    "AC",
    "()",
    "%",
    "÷",
    "7",
    "8",
    "9",
    "x",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    // "+/-",
    "0",
    ".",
    "",
    "=",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(child: _buildDisplay()),
            _buildGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildDisplay() {
    return Container(
      alignment: Alignment.bottomRight,
      child: Text(
        "0",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
      // color: Colors.red,
    );
  }

  Widget _buildGrid() {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        Color btnColor = const Color.fromARGB(255, 218, 215, 215);

        // if (index == 0) btnColor = Colors.orange;

        // if (index == 19) btnColor = Colors.orange;

        // Change operators color
        // if (_text[index] == "÷" ||
        //     _text[index] == "x" ||
        //     _text[index] == "-" ||
        //     _text[index] == "+") {
        //   btnColor = Colors.orange;
        // }
        return Container(
          decoration: BoxDecoration(
            color: index <= 2
                ? Color(0xffd2d1d8)
                : index % 4 == 3
                    ? Color(0xffffdba0)
                    : Color.fromARGB(194, 232, 232, 237),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: index == 18
                ? Icon(Icons.backspace)
                : Text(
                    _text[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
