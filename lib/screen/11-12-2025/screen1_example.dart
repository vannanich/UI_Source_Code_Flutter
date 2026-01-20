import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/fashion_product.dart';
import 'package:flutter_application_2/models/product_data.dart';
import 'package:flutter_application_2/routes/app_routes.dart';

class Screen1Example extends StatefulWidget {
  const Screen1Example({super.key});

  @override
  State<Screen1Example> createState() => _Screen1ExampleState();
}

class _Screen1ExampleState extends State<Screen1Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("screen 1"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              var productData = ProductModel.fromMap(fashionProducts[index]);
              return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.screen2,
                      arguments: productData,
                    );
                  },
                  child: _buildProductItem(index, productData));
            },
            itemCount: 10,
          ),
        )
        // Center(
        // child: ElevatedButton(
        //   onPressed: () {
        //     Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2(),),),
        //   },
        //   child: Text("submit to screen 2"),
        // ),
        //   child: ElevatedButton(
        //     onPressed: () {
        //       Navigator.pushNamed(context, AppRoutes.screen2,
        //           arguments: "Hello from first screen",);
        //     },
        //     child: Text("Goto screen 2"),
        //   ),
        // ),
        );
  }

  Column _buildProductItem(int index, ProductModel productData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container(
        //   color: Color(0xffebebeb),
        //   child: CachedNetworkImage(
        //     imageUrl: fashionProducts[index]["thumbnail"].toString(),
        //   ),
        // ),

        Image.network(
          fashionProducts[index]["thumbnail"].toString(),
          width: 150,
          height: 110,
          fit: BoxFit.cover,
        ),
        // Text(fashionProducts[index]["id"].toString()),
        Text(
          fashionProducts[index]["title"].toString(),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text("Price : \$${productData.price}"),
        Text(
          "Description : ${productData.description}",
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
