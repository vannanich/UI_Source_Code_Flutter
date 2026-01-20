import 'package:flutter/material.dart';

class SearchImg extends StatefulWidget {
  const SearchImg({super.key});

  @override
  State<SearchImg> createState() => _SearchImgState();
}

class _SearchImgState extends State<SearchImg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _buildHeader(),
              SizedBox(
                height: 15,
              ),
              _buildText(),
              SizedBox(
                height: 10,
              ),
              _buildLish(),
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
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "KHOA AV STORE",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "By Ice Queen",
                ),
                Text("DISPLAY IMAGE"),
              ],
            ),
          ],
        ),
        Text(
          "DISPLAY IMAGE",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "BY ID",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Center(
              child: Text(
            "No Image",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )),
        ),
      ],
    );
  }

  Widget _buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 6,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Image",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 3,
              child: SizedBox(
                width: 50,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text("Search"),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Image",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildLish() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: _buildListImg()),
            Expanded(child: _buildListImg()),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(child: _buildListImg()),
            Expanded(child: _buildListImg()),
          ],
        ),
      ],
    );
  }

  Widget _buildListImg() {
    return Column(
      children: [
        Container(
          width: 190,
          height: 150,
          color: Colors.green,
        ),
      ],
    );
  }
}
