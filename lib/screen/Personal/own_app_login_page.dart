import 'package:flutter/material.dart';

class OwnAppLoginPage extends StatefulWidget {
  const OwnAppLoginPage({super.key});

  @override
  State<OwnAppLoginPage> createState() => _OwnAppLoginPageState();
}

class _OwnAppLoginPageState extends State<OwnAppLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Welcome")
        ],
      ),
    );
  }
}