import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridLists extends StatefulWidget {
  const GridLists({super.key});

  @override
  State<GridLists> createState() => _GridListsState();
}

class _GridListsState extends State<GridLists> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "GridList",
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
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          children: List.generate(50, (index) {
            return Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            );
          }),
        ),
      ),
    ));
  }
}
