import 'package:flutter/material.dart';

class GestureDecEx2 extends StatefulWidget {
  const GestureDecEx2({super.key});

  @override
  State<GestureDecEx2> createState() => _GestureDecEx2State();
}

class _GestureDecEx2State extends State<GestureDecEx2> {
  List<String> images = ["assets/phjumbin.png", "assets/sursdey.png"];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            _buildBody(),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Center(
      child: Text(
        "Select Image ",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Display Image",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 300,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.image_rounded,
                  size: 48,
                  color: Colors.yellow,
                ),
                SizedBox(height: 10),
                Text("No Image Selected")
              ],
            ),
            // child: currentIndex == 0 || currentIndex == 1
            //     ? Image.asset(
            //         images[currentIndex],
            //         fit: BoxFit.cover,
            //       )
            //     : Center(
            //         child: Icon(Icons.image),
            //       ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Images",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  images[0],
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Center(
                  child: Image.asset(
                    images[1],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              "clear",
             
            ),
          )
        ],
      ),
    );
  }
}
