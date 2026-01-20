import 'package:flutter/material.dart';

class OwnAppHomescreen extends StatefulWidget {
  const OwnAppHomescreen({super.key});

  @override
  State<OwnAppHomescreen> createState() => _OwnAppHomescreenState();
}

class _OwnAppHomescreenState extends State<OwnAppHomescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView  (
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              _buildHeader(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Sleep Stories",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Soothing bedtime stories to help nyou fail",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          Text(
            "into a deep and natural sleep",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildIcon(
                    icon: Icons.sunny,
                    title: "All",
                    onPressed: () {},
                    bgColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  _buildIcon(
                    icon: Icons.favorite,
                    title: "My",
                    onPressed: () {},
                    bgColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  _buildIcon(
                    icon: Icons.sentiment_dissatisfied,
                    title: "Anxious",
                    onPressed: () {},
                    bgColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  _buildIcon(
                    icon: Icons.bedtime_outlined,
                    title: "Sleep",
                    onPressed: () {},
                    bgColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  _buildIcon(
                    icon: Icons.escalator_warning,
                    title: "Kid",
                    onPressed: () {},
                    bgColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  _buildIcon(
                    icon: Icons.headset,
                    title: "Sound",
                    onPressed: () {},
                    bgColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  _buildIcon(
                    icon: Icons.note,
                    title: "Quote",
                    onPressed: () {},
                    bgColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/own_homescreen_picc.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "The Ocean Moon",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Non-Stop 8 hours of our most",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "popular sleep audio",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("START"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCard("assets/own_homescreen_sleep.webp"),
                    Spacer(),
                    _buildCard("assets/own_homescreen_left.jpg"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCard("assets/own_homescreen_handshack.webp"),
                    Spacer(),
                    _buildCard("assets/own_homescreen_bird.jpg"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon({
    required IconData icon,
    required String title,
    required VoidCallback onPressed,
    double width = 50,
    double height = 50,
    Color iconColor = Colors.white,
    Color bgColor = Colors.blue,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: iconColor),
          ),
        ),
        SizedBox(height: 6),
        Text(
          title,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildCard(String img) {
    return Container(
      width: 180,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
