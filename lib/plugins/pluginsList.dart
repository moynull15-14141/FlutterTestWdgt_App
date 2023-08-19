import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class plugins extends StatefulWidget {
  const plugins({super.key});

  @override
  State<plugins> createState() => _pluginsState();
}

class _pluginsState extends State<plugins> {
  ImageSource source = ImageSource.camera;
  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "Plugins",
          style: GoogleFonts.tillana(
              fontWeight: FontWeight.w400,
              fontSize: 28,
              textStyle: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 3,
              )),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.flutter_dash_sharp,
          size: 36,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
              height: 400,
              width: 300,
              color: Colors.blueGrey,
              child: Card(
                  elevation: 10,
                  child: imagePath == null
                      ? Image.asset('images/person.png')
                      : Image.file(File(imagePath!)))),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 80,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    source = ImageSource.camera;

                    getImage();
                  },
                  icon: Icon(Icons.camera_alt),
                  label: Text("Camera")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    source = ImageSource.gallery;
                    getImage();
                  },
                  icon: Icon(Icons.photo_album),
                  label: Text("Gallery"))
            ],
          )
        ],
      ),
    ));
  }

  void getImage() async {
    final selectedImage = await ImagePicker().pickImage(source: source);

    if (selectedImage != null) {
      setState(() {
        imagePath = selectedImage.path;
      });
    }
  }
}
