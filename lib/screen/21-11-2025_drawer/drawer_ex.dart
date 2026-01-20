import 'package:flutter/material.dart';

class DrawerEx extends StatelessWidget {
  const DrawerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // endDrawer: Drawer(),
      drawer: Drawer(
        // this drawer will be full screen if use double.infinity
        // width: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        //  use listview instead of column  cuz listview no overflow and can scroll
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(
            //   "assets/cartoon_1..jpg",
            //   width: 200,
            //   height: 200,
            // ),

            // second way
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/cartoon_1..jpg"),
              ),
              accountName: Text(
                "Vanna Nich",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              accountEmail: Text(
                "vannanich2@gmail.com",
              ),
            ),

            //  first way
            // DrawerHeader(
            //   child: SizedBox(
            //     width: double.infinity,
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         CircleAvatar(
            //           radius: 30,
            //           backgroundImage: AssetImage("assets/cartoon_1..jpg"),
            //         ),
            //         Text(
            //           "Vanna Nich",
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //           ),
            //         ),
            //         Text(
            //           "vannanich2@gmail.com",
            //           style: TextStyle(color: Colors.grey),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            // simple way

            // Row(
            //   children: [
            //     Icon(
            //       Icons.folder,
            //       size: 30,
            //     ),
            //     SizedBox(
            //       width: 50,
            //     ),
            //     Text(
            //       "My Files",
            //       style: TextStyle(fontSize: 18),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Row(
            //   children: [
            //     Icon(
            //       Icons.folder,
            //       size: 30,
            //     ),
            //     SizedBox(
            //       width: 50,
            //     ),
            //     Text(
            //       "My Files",
            //       style: TextStyle(fontSize: 18),
            //     ),
            //   ],
            // ),
            ListTile(
              selected: true,
              selectedTileColor: Colors.grey,
              leading: Icon(
                Icons.folder,
                color: Colors.deepPurple,
              ),
              trailing: Icon(Icons.arrow_forward),
              title: Text(
                "My File",
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
              // subtitle: Text("Share my file"),
              onTap: () {
                Navigator.pop(context);
                // Navigator.push(context, route);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: Text(
                "Share With Me",
                style: TextStyle(),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.star,
              ),
              title: Text(
                "Starred",
                style: TextStyle(),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),

            ListTile(
              leading: Icon(
                Icons.watch_later,
              ),
              title: Text(
                "Recent",
                style: TextStyle(),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.offline_pin,
              ),
              title: Text(
                "Offline",
                style: TextStyle(),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.upload,
              ),
              title: Text(
                "Uploads",
                style: TextStyle(),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.backup,
              ),
              title: Text(
                "Back Up",
                style: TextStyle(),
              ),
              onTap: () {},
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
