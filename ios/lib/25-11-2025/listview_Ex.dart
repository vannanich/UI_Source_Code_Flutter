import 'package:flutter/material.dart';

class ListviewEx extends StatefulWidget {
  const ListviewEx({super.key});

  @override
  State<ListviewEx> createState() => _ListviewExState();
}

class _ListviewExState extends State<ListviewEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          // height: 200,
          child: ListView(
            // scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 200,
                height: 250,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 250,
                color: Colors.black,
              ),
              Container(
                width: 200,
                height: 250,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 250,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
