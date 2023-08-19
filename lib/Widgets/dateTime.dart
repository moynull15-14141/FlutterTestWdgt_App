import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class datetime extends StatefulWidget {
  const datetime({super.key});

  @override
  State<datetime> createState() => _datetimeState();
}

class _datetimeState extends State<datetime> {
  var Date = DateTime.now();
  var time = DateTime.now();
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
            body: Stack(
              children: [
                Container(
                  color: Colors.grey[300],
                ),
                Positioned(
                  bottom: 20,
                  left: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text("Click Me")),
                ),
                Positioned(
                  left: 60,
                  top: 20,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 600),
                      child: Card(
                        elevation: 10,
                        color: Colors.black12,
                        child: Text(
                          "${time.hour} H:${time.minute} M:${time.second} S",
                          style: TextStyle(fontSize: 50),
                        ),
                      )),
                ),
                Positioned(
                  left: 60,
                  top: 120,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 600),
                      child: Card(
                        elevation: 10,
                        color: Colors.black12,
                        child: Text(
                          "${Date.day}D:${Date.month}M:${Date.year}",
                          style: TextStyle(fontSize: 50),
                        ),
                      )),
                ),
              ],
            )));
  }
}
