import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Basic_app_bar extends StatefulWidget {
  const Basic_app_bar({super.key});

  @override
  State<Basic_app_bar> createState() => _Basic_app_barState();
}

class _Basic_app_barState extends State<Basic_app_bar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "App Bar",
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
      body: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.emoji_emotions_outlined),
          title: Text('Basic Appbar'),
          actions: [
            Icon(
              Icons.menu,
              size: 30,
            ),
          ],
        ),
        body: Center(
          child: Text("Body"),
        ),
      ),
    ));
  }
}
