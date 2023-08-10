import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class containars extends StatefulWidget {
  const containars({super.key});

  @override
  State<containars> createState() => _containarsState();
}

class _containarsState extends State<containars> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(color: Colors.green),
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.blue[800]),
                ),
                Text(
                  'Container',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
