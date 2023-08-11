import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class wraps extends StatefulWidget {
  const wraps({super.key});

  @override
  State<wraps> createState() => _wrapsState();
}

class _wrapsState extends State<wraps> {
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
            Wrap(
                children: List.generate(5, (index) {
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {},
                    child: Text(index.toString())),
              );
            })),
            SizedBox(
              height: 10,
            ),
            Wrap(
                children: List.generate(5, (index) {
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen),
                    onPressed: () {},
                    child: Text(index.toString())),
              );
            })),
          ],
        ),
      ),
    ));
  }
}
