import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class List_tile extends StatefulWidget {
  const List_tile({super.key});

  @override
  State<List_tile> createState() => _List_tileState();
}

class _List_tileState extends State<List_tile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "List-tile",
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
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              title: Text('List-tile'),
            ),
            ListTile(
                title: Text('This is a listtile'),
                leading: Icon(Icons.emoji_emotions)),
            ListTile(
              title: Text('This a titellist'),
              leading: Icon(Icons.face_3),
              subtitle: Text("This a new row"),
              trailing: Icon(Icons.arrow_outward),
            )
          ],
        ),
      ),
    ));
  }
}
