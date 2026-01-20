import 'package:flutter/material.dart';

class ContainerEx extends StatelessWidget {
  const ContainerEx({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: NetworkImage(
              //       "https://www.colorblends.com/wp-content/uploads/2021/06/1166_SilverCloud_IMG_4546-scaled.jpg"),
              // ),
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(20),
            // padding: EdgeInsets.only(left: 20),
            // padding: EdgeInsets.symmetric(vertical: 30),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.brecks.com/cdn/shop/files/91029_medium.webp?v=1721901400"),
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(
                  color: Colors.orange.withValues(alpha: 0.4),
                  width: 5,
                ),
                // shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 10,
                    spreadRadius: 10,
                    // offset: Offset(10, 10),
                  ),
                ],
                // gradient: RadialGradient(
                //   colors: [
                //     Colors.red,
                //     Colors.blue.withValues(alpha: 0.2),
                //     Colors.orange.withValues(alpha: 0.2),
                //   ],
                // )
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    const Color.fromARGB(255, 170, 78, 187),
                    Colors.lightBlue,
                  ],

                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  // stops: [0.5, 0.1, 0.2],
                ),
              ),
              // alignment: Alignment.center,
              // child: Container(
              //   width: 100,
              //   height: 100,
              //   color: Colors.yellow,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
