import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/18-11-2025_button_navigationbar/app_bar_ex.dart';
import 'package:flutter_application_2/screen/18-11-2025_button_navigationbar/screen_1.dart';
import 'package:flutter_application_2/screen/18-11-2025_button_navigationbar/screen_2.dart';
import 'package:flutter_application_2/screen/18-11-2025_button_navigationbar/screen_3.dart';
import 'package:flutter_application_2/screen/18-11-2025_button_navigationbar/screen_4.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    AppBarEx(),
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: FlashyTabBar(
        selectedIndex: currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.event),
            title: Text('Events'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.highlight),
            title: Text('Highlights'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.air_sharp),
            title: Text('한국어'),
          ),
        ],
      ),
      // productData: BottomNavigationBar(
      //   onTap: (value) {
      //     debugPrint("Value : $value");
      //     setState(
      //       () {
      //         currentIndex = value;
      //       },
      //     );
      //   },
      //   selectedItemColor: Colors.amber,
      //   unselectedItemColor: Colors.red,
      //   selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      //   backgroundColor: Colors.white,
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: currentIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings_outlined),
      //       label: "Setting",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: "Person",
      //     ),
      //   ],
      // ),
    );
  }
}
