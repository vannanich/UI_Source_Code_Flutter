import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/grid_view/product_dataset.dart';

class GridViewEx extends StatefulWidget {
  const GridViewEx({super.key});

  @override
  State<GridViewEx> createState() => _GridViewExState();
}

class _GridViewExState extends State<GridViewEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Example"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 100,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                color: Colors.amber,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: productData.length,
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 2,
                //   crossAxisSpacing: 10,
                //   mainAxisSpacing: 10,
                //   // childAspectRatio: 2,
                //   mainAxisExtent: 200,
                // ),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,  // size that grid can rik mead  rik os trim 300
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child:
                                Image.network(productData[index]["thumbnail"])),
                        Text("Name : ${productData[index]["title"]}"),
                        Text("Price: ${productData[index]["price"]} \$ "),
                      ],
                    ),
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
