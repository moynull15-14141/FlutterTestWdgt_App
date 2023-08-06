import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textfeld extends StatefulWidget {
  const textfeld({super.key});

  @override
  State<textfeld> createState() => _textfeldState();
}

class _textfeldState extends State<textfeld> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 162, 227, 255),
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'E-mail', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Color.fromARGB(255, 37, 41, 123),
                ),
                onPressed: () {},
                child: Text(
                  'Done',
                  style: TextStyle(fontSize: 18),
                ))
          ],
        ),
      ),
    ));
  }
}
