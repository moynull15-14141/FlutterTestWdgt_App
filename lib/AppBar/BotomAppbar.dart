import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Botom_app_bar extends StatefulWidget {
  const Botom_app_bar({super.key});

  @override
  State<Botom_app_bar> createState() => _Botom_app_barState();
}

class _Botom_app_barState extends State<Botom_app_bar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "App Bar",
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
      body: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    size: 38,
                  ),
                  Icon(
                    Icons.call,
                    size: 38,
                  ),
                  Icon(
                    Icons.message,
                    size: 38,
                  )
                ],
              ),
            ),
          ),
        ),
        body: Center(
          child: Text('body'),
        ),
      ),
    ));
  }
}
