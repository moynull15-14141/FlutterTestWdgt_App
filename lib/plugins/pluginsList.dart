import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class plugins extends StatefulWidget {
  const plugins({super.key});

  @override
  State<plugins> createState() => _pluginsState();
}

class _pluginsState extends State<plugins> {
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
        children: [],
      ),
    ));
  }
}
