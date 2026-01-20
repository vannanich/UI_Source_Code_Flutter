import 'package:flutter/material.dart';

class DefaultTabBarrEx extends StatefulWidget {
  const DefaultTabBarrEx({super.key});

  @override
  State<DefaultTabBarrEx> createState() => _DefaultTabBarrExState();
}

class _DefaultTabBarrExState extends State<DefaultTabBarrEx> {
  //  late key word must be pjol value but we can skip , ? pjol value kr bn ot kr bbn
  // late TabController tabCtrl;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   tabCtrl = TabController(length: 3, vsync: this);
  // }

  @override
  Widget build(BuildContext context) {
    //  function iinitstate function run only one time in  program and run mun build

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("Tab Bar example"),
          actions: [
            Icon(Icons.attach_file),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.calendar_month),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert)
          ],
          bottom: TabBar(
            // isScrollable: true,
            indicatorColor: Colors.red,
            // indicatorSize: TabBarIndicatorSize.label,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.blue,
            indicatorAnimation: TabIndicatorAnimation.elastic,
            indicator: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            // indicatorWeight: 10,
            tabs: [
              Tab(
                icon: Icon(Icons.video_call),
                text: "Video",
              ),
              Tab(
                icon: Icon(Icons.photo),
                text: "Photo",
              ),
              Tab(
                icon: Icon(Icons.audio_file),
                text: "Audio",
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: FittedBox(
                child: Text(
                  "Good\nmorning".toUpperCase(),
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width,
                    height: 1,
                  ),
                ),
              ),
            ),
            //  wanna change a bit part of sscreen we use tabBarView and it can also swag
            SizedBox(
              height: 300,
              child: TabBarView(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.red,
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.black,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
