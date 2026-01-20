import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/product_data.dart';

class Screen2Example extends StatefulWidget {
  const Screen2Example({super.key});

  @override
  State<Screen2Example> createState() => _Screen2ExampleState();
}

class _Screen2ExampleState extends State<Screen2Example> {
  ProductModel? data;
  // String data = "";

  @override
  //  didChangeDependencies first run and run only one time , and we use when we have data , so we use it instead of initState ::: use it when we have context , haave context initState can not do this
  // void didChangeDependencies() {
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  //   data = ModalRoute.of(context)!.settings.arguments as String;
  // }
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    data = ModalRoute.of(context)!.settings.arguments as ProductModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("sccreen 2"),
      ),
      body: Column(
        children: [
          Container(
            height: 220,
            color: Colors.red,
            child: Image.network(
              data!.thumbnail,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            data!.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Text(
            data!.description,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
