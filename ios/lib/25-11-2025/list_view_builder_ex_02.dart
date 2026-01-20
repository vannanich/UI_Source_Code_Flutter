import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/25-11-2025_list_vieww/ds/userDS.dart';

class ListViewBuilderEx02 extends StatefulWidget {
  const ListViewBuilderEx02({super.key});

  @override
  State<ListViewBuilderEx02> createState() => _ListViewBuilderEx02State();
}

class _ListViewBuilderEx02State extends State<ListViewBuilderEx02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" user data"),
        backgroundColor: const Color.fromARGB(255, 221, 213, 150),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          var fullName =
              "${userDs[index]["firstName"]} ${userDs[index]["lastName"]}";
          var email = "${userDs[index]["email"]} ";
          var photo = "${userDs[index]["image"]}";
          return Row(
            children: [
              Image.network(photo),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Full Name $fullName",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Email $email",
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
