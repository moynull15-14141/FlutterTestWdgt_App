import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tst1/Navigation/Routes/routes.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "Page 3",
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('xxxx@gmail.com'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('xxxx@gmail.com'),
            ),
            Divider(
              height: 1,
              color: Colors.black,
              endIndent: 25,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => routes()));
                },
                child: Text('Go to HomePage'))
          ],
        ),
      ),
    ));
  }
}
