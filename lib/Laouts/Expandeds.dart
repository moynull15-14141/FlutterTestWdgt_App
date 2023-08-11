import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class expandeds extends StatefulWidget {
  const expandeds({super.key});

  @override
  State<expandeds> createState() => _expandedsState();
}

class _expandedsState extends State<expandeds> {
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.yellow,
                ))
          ],
        ),
      ),
    ));
  }
}
