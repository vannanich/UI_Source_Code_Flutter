import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/25-11-2025_list_vieww/ds/chat_dataset.dart';
import 'package:flutter_application_2/screen/pratice/vannanich_practice_06/models/chat_model.dart';

class VannanichPractice06 extends StatefulWidget {
  const VannanichPractice06({super.key});

  @override
  State<VannanichPractice06> createState() => _VannanichPractice06State();
}

class _VannanichPractice06State extends State<VannanichPractice06> {
  var searchCtr = TextEditingController();
  var searchData = chatDataset;
  int selectedIndex = 0;

  //  searchCtrl compare chatDataset
  void searchFunction() {
    setState(() {
      searchData = chatDataset.where(
        (chatDS) {
          //  map nv sol tea key
          return chatDS["userName"]
              .toString()
              .toLowerCase()
              .contains(searchCtr.text.toLowerCase());
        },
      ).toList();
      // searchData = chatDataset;
    });
  }

  void filterUser(String title) {
    setState(() {
      searchData = chatDataset.where(
        (chatDS) {
          return chatDS["category"].toString().toLowerCase() ==
              title.toLowerCase();
        },
      ).toList();
      // searchData = chatDataset;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchCtr.addListener(searchFunction);
    filterUser("primary");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Practice 06",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            size: 26,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.edit,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: searchCtr,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 103, 100, 100),
                  border: OutlineInputBorder(),
                  hintText: "search...",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: SizedBox(
              //         width: 100,
              //         height: 40,
              //         child: ElevatedButton(
              //           onPressed: () {},
              //           child: Text("Primary"),
              //         ),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () {},
              //         child: Text("General"),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () {},
              //         child: Text("Requests"),
              //       ),
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  Expanded(
                      child: _buildItem(
                    title: "primary",
                    index: 0,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: _buildItem(title: "general", index: 1)),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: _buildItem(title: "requests", index: 2)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: searchData.length,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 30,
                  );
                },
                itemBuilder: (context, index) {
                  var chatdata = ChatModel.fromMap(searchData[index]);
                  return Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          chatdata.image,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              " ${chatdata.username}",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              " ${chatdata.message}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        " ${chatdata.timestamp}",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem({required title, required int index}) {
    return GestureDetector(
      onTap: () {
        filterUser(title);
        print("select index : $index");
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          color: selectedIndex == index ? Colors.white : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: selectedIndex == index
                  ? Colors.black
                  : Colors.white.withValues(alpha: 0.5),
            ),
          ),
        ),
      ),
    );
  }
}
