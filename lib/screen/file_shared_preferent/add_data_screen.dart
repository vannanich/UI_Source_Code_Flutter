import 'package:flutter/material.dart';
import 'package:flutter_application_2/db/db_helper.dart';

class AddDataScreen extends StatefulWidget {
  const AddDataScreen({super.key});

  @override
  State<AddDataScreen> createState() => _AddDataScreenState();
}

class _AddDataScreenState extends State<AddDataScreen> {
  var titleCtrl = TextEditingController();
  var subtitleCtrl = TextEditingController();
  var data = [];
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    // as them the data torteh or not iff torte pls kidnly show list
    data = (ModalRoute.of(context)!.settings.arguments ?? []) as List;
    if (data.isNotEmpty) {
      titleCtrl.text = data[1];
      subtitleCtrl.text = data[2];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.isEmpty ? "Add Data" : "Update Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 10,
          children: [
            TextField(
              controller: titleCtrl,
              decoration: InputDecoration(
                hintText: "Enter title",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: subtitleCtrl,
              decoration: InputDecoration(
                hintText: "Enter subtitle",
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // DbHelper().insertData(
                //   title: titleCtrl.text,
                //   subtitle: subtitleCtrl.text,
                // );
                if (data.isEmpty) {
                  DbHelper().insertData(
                    title: titleCtrl.text,
                    subtitle: subtitleCtrl.text,
                  );
                } else {
                  DbHelper().updateData(
                    id: data[0],
                    title: titleCtrl.text,
                    subtitle: subtitleCtrl.text,
                  );
                }

                Navigator.pop(context);
              },
              child: Text(
                data.isEmpty ? "Save Data" : "Update dataa",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "test setstate",
              ),
            )
          ],
        ),
      ),
    );
  }
}
