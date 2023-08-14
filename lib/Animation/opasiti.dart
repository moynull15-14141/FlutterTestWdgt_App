import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class opasitis extends StatefulWidget {
  const opasitis({super.key});

  @override
  State<opasitis> createState() => _opasitisState();
}

class _opasitisState extends State<opasitis> {
  var myOpasity = 1.0;
  bool visibel = true;

  double myop = 1.0;
  bool vis = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "Opasity",
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpasity,
              duration: Duration(seconds: 2),
              curve: Curves.ease,
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 100,
                width: 250,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (visibel) {
                      myOpasity = 0.0; // for invisible
                      visibel = false;
                    } else {
                      myOpasity = 1.0; //for visible
                      visibel = true;
                    }
                  });
                },
                child: Text('Click')),
            InkWell(
                onTap: () {
                  setState(() {
                    if (vis) {
                      myop = 0.0;
                      vis = false;
                    } else {
                      myop = 1.0;
                      vis = true;
                    }
                  });
                },
                child: AnimatedOpacity(
                  opacity: myop,
                  duration: Duration(seconds: 3),
                  curve: Curves.easeInQuint,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
