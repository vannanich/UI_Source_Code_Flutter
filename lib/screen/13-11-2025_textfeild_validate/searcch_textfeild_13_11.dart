import 'package:flutter/material.dart';

class SearcchTextfeild1311 extends StatefulWidget {
  const SearcchTextfeild1311({super.key});

  @override
  State<SearcchTextfeild1311> createState() => _SearcchTextfeild1311State();
}

class _SearcchTextfeild1311State extends State<SearcchTextfeild1311> {
  var textCtrl = TextEditingController();
  var searchImg = "";
  // var id = List[];\
  List<String> id = ["img_01", "img_02", "img_03"];
  List<String> name = ["image_1", "image_2", "image_3"];
  List<String> filter = ["id", "name"];
  int index = 0;

  List<String> image = [
    "assets/phjumbin_1.png",
    "assets/sursdey_2.png",
    "assets/cartoon.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              color: Colors.red,
              child: Image.asset(
                searchImg,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Center(child: Text("image not found !"));
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
                        hintText: "search image ${filter[index]}...",
                        suffixIcon: Icon(Icons.refresh),
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
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        child: Text("Search"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class SearcchTextfeild1311 extends StatefulWidget {
//   const SearcchTextfeild1311({super.key});

//   @override
//   State<SearcchTextfeild1311> createState() => _SearcchTextfeild1311State();
// }

// class _SearcchTextfeild1311State extends State<SearcchTextfeild1311> {
//   var textc = TextEditingController();
//   var img = "";
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Hi",
//                     style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 29,
//                     ),
//                   ),
//                   Text(
//                     "Hi Hello how are u ",
//                     style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 29,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   TextField(
//                     controller: textc,
//                     decoration: InputDecoration(
//                       hintText: "search image",
//                       enabledBorder: OutlineInputBorder(),
//                       focusedErrorBorder: OutlineInputBorder(),
//                     ),
//                   ),
//                   Text("display Image"),
//                   ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         img = "assets/${textc.text}.png";
//                       });
//                     },
//                     child: Text("search"),
//                   ),
//                   Column(
//                     children: [
//                       Container(
//                         width: double.infinity,
//                         height: 220,
//                         color: Colors.red,
//                         child:
//                             // img.isEmpty ? Icon(Icons.image) : Image.asset(img),
//                             Image.asset(
//                           img,
//                           errorBuilder: (context, error, stackTrace) {
//                             return Text("Image not found !");
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         height: 29,
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               width: 200,
//                               height: 120,
//                               color: Colors.red,
//                               child: Image(
//                                 image: AssetImage('assets/phjumbin.png'),
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Container(
//                               width: 200,
//                               height: 120,
//                               color: Colors.red,
//                               child: Image(
//                                 image: AssetImage('assets/sursdey.png'),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
