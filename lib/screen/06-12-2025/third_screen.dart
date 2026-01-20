import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  String data = "";
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    data = (ModalRoute.of(context)!.settings.arguments ?? "No data") as String;
  }

  @override
  Widget build(BuildContext context) {
    // as string it meant modalround of iss an object not string so we need to add as string to convert it to string
    // final data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("Third screen "),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, "Hello from third screen");
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text(data),
      ),
    );
  }
}
