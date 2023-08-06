import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class icons extends StatefulWidget {
  const icons({super.key});

  @override
  State<icons> createState() => _iconsState();
}

class _iconsState extends State<icons> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "TestApp",
          style: GoogleFonts.tillana(
              fontWeight: FontWeight.w500,
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.abc,
                  size: 60,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.image,
                  size: 60,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.person,
                  size: 60,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.message,
                  size: 60,
                ),
                Icon(
                  Icons.call,
                  size: 60,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
