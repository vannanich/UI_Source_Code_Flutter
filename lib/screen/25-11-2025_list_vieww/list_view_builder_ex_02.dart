import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/user_models.dart';
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
      // body: ListView.builder(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 80,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var userData = UserModels.fromMAP(userDs[index]);
                      return Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              userData.image,
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Text(userData.firstName),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: userDs.length),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "search",
                  hintStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemBuilder: (context, index) {
                  var userData = UserModels.fromMAP(userDs[index]);
                  return Row(
                    children: [
                      Image.network(
                        userData.image,
                        width: 100,
                        height: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Full Name ${userData.firstName} ${userData.lastName}",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Email ${userData.email}",
                            style:
                                TextStyle(fontSize: 18, color: Colors.blueGrey),
                          ),
                          Text(
                            "ID ${userData.id}",
                            style:
                                TextStyle(fontSize: 18, color: Colors.blueGrey),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
