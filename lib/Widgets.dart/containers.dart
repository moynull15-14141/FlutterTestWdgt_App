import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Containers extends StatefulWidget {
  const Containers({super.key});

  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.zero,
                          color: Color.fromARGB(255, 255, 44, 44),
                        ),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(255, 255, 44, 44),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Normal Container',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        'decoration Container',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
