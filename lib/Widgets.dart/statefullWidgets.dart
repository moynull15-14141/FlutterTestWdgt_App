import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class stsful extends StatefulWidget {
  const stsful({super.key});

  @override
  State<stsful> createState() => _stsfulState();
}

class _stsfulState extends State<stsful> {
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
    ));
  }
}
