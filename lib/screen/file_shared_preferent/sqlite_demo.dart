import 'package:flutter/material.dart';
import 'package:flutter_application_2/db/db_helper.dart';

class SqliteDemo extends StatefulWidget {
  const SqliteDemo({super.key});

  @override
  State<SqliteDemo> createState() => _SqliteDemoState();
}

class _SqliteDemoState extends State<SqliteDemo> {
  var listdata = [];

  void loadData() async {
    var data = await DbHelper().readData();
    setState(() {
      listdata = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    listdata[index]["title"],
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    listdata[index]["subtitle"],
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          DbHelper().deleteData(
                            listdata[index]["id"],
                          );
                          loadData();
                        },
                        icon: Icon(Icons.delete),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              "/addData",
                              arguments: [
                                listdata[index]["id"],
                                listdata[index]["title"],
                                listdata[index]["subtitle"],
                              ],
                            ).then(
                              (value) {
                                loadData();
                              },
                            );
                          },
                          icon: Icon(Icons.edit))
                    ],
                  ),
                );
              },
              itemCount: listdata.length,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/addData").then(
                  (value) {
                    loadData();
                  },
                );
              },
              child: Text("Write TO DB"),
            ),
          ],
        ),
      ),
    );
  }
}
