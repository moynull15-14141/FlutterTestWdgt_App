import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tst1/Navigation/Routes/Page2.dart';

class routes extends StatefulWidget {
  const routes({super.key});

  @override
  State<routes> createState() => _routesState();
}

class _routesState extends State<routes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "Routes",
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
      body: Scaffold(
        backgroundColor: Color.fromARGB(146, 33, 33, 33),
        appBar: AppBar(
          title: Text('Page 1'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => page2())));
                  },
                  child: Text("page 2")),
            )
          ],
        ),
      ),
    ));
  }
}
