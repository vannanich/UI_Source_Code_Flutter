import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImgPickerEx extends StatefulWidget {
  const ImgPickerEx({super.key});

  @override
  State<ImgPickerEx> createState() => _ImgPickerExState();
}

class _ImgPickerExState extends State<ImgPickerEx> {
  String imagePath = "";
  void pickImg(ImageSource source) async {
    ImagePicker picker = ImagePicker();
    var pickImg = await picker.pickImage(source: source);
    debugPrint("Image Path = ${pickImg!.path}");
    setState(() {
      imagePath = pickImg.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.amber,
              child: Image.file(
                File(imagePath),
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Text("Image not found !"),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                pickImg(ImageSource.gallery);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[300],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text("Gallery"),
            ),
            ElevatedButton(
                onPressed: () {
                  pickImg(ImageSource.camera);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text("camera"))
          ],
        ),
      ),
    );
  }
}
