import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class texts extends StatefulWidget {
  const texts({super.key});

  @override
  State<texts> createState() => _textsState();
}

class _textsState extends State<texts> {
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
                Text("Hello Moynul", style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: 50,
                ),
                Text("Hello Moynul",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Hello Moynul",
                    style: GoogleFonts.gabriela(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  width: 30,
                ),
                Text("Hello Moynul",
                    style: GoogleFonts.tapestry(
                        fontSize: 20,
                        color: Color.fromARGB(255, 186, 78, 0),
                        fontWeight: FontWeight.w500)),
              ],
            ),
            Row(
              children: [
                RichText(
                    text: TextSpan(
                        text: 'Hello',
                        style: DefaultTextStyle.of(context).style,
                        children: [
                      TextSpan(
                          text: ' Moynul',
                          style: GoogleFonts.jacquesFrancoisShadow(
                              fontSize: 28,
                              color: Color.fromARGB(255, 105, 19, 255))),
                    ]))
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
