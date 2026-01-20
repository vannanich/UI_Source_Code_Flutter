import 'package:flutter/material.dart';

class VannanichPractice05 extends StatefulWidget {
  const VannanichPractice05({super.key});

  @override
  State<VannanichPractice05> createState() => _SearcchTextfeild1311State();
}

class _SearcchTextfeild1311State extends State<VannanichPractice05> {
  var textCtrl = TextEditingController();
  var searchImg = "";
  // bool isSelect = (searchImg == Image);
  List<String> id = ["img_01", "img_02", "img_03", "img_04"];
  List<String> image = [
    "assets/img_01.png",
    "assets/img_02.png",
    "assets/img_3.png",
    "assets/img_04.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(
                height: 10,
              ),
              _buildfoot(),
              // _buildImage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              color: Colors.grey,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SEARCH IMAGE APP",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "By flutter framework",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "DISPLAY IMAGE ",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "BY ID",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(30),
            ),
          ),
          child: Image.asset(
            searchImg,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image),
                    SizedBox(width: 10),
                    Text(
                      "No Image ",
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: TextField(
                  controller: textCtrl,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "search image",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          var searchID = textCtrl.text;

                          if (id.contains(searchID)) {
                            var index = id.indexOf(searchID);
                            searchImg = image[index];
                          }
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLastime(String imagePath, String title) {
    bool isSelected = (searchImg == imagePath);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 300,
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected
                  ? Colors.black
                  : const Color.fromARGB(0, 246, 244, 244),
              width: 4,
            ),
            borderRadius: BorderRadius.circular(10),
            color: Colors.pink,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(title, style: TextStyle(fontSize: 18)),
      ],
    );
  }

  Widget _buildfoot() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _buildLastime("assets/img_01.png", "img_01")),
            SizedBox(width: 20),
            Expanded(child: _buildLastime("assets/img_02.png", "img_02")),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: _buildLastime("assets/img_3.png", "img_03")),
            SizedBox(width: 20),
            Expanded(child: _buildLastime("assets/img_04.png", "img_04")),
          ],
        ),
      ],
    );
  }
}
