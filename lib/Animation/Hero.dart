import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class heros extends StatefulWidget {
  const heros({super.key});

  @override
  State<heros> createState() => _herosState();
}

class _herosState extends State<heros> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 255, 74, 77),
      title: Text(
        "Hero",
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
    )));
  }
}
