import 'package:flutter/material.dart';

class AppBarEx extends StatelessWidget {
  const AppBarEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        // bottom: ,
        elevation: 4,
        shadowColor: Colors.black,
        title: Text(
          "App Bar Ex",
          style: TextStyle(
            color: Colors.white,
          ), 
        ),
        // leading: Icon(
        //   Icons.menu,
        //   color: Colors.white,
        // ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
