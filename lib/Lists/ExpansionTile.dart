import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class expansionTile extends StatefulWidget {
  const expansionTile({super.key});

  @override
  State<expansionTile> createState() => _expansionTileState();
}

class _expansionTileState extends State<expansionTile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "Expansion Tile",
          style: GoogleFonts.tillana(
              fontWeight: FontWeight.w400,
              fontSize: 28,
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 3,
              )),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.flutter_dash_sharp,
          size: 36,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              color: Colors.deepPurple[200],
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  "This is a Car List",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            ExpansionTile(
              title: const Text(
                'Car',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
              leading: const Icon(
                Icons.car_rental,
                color: Colors.black,
                size: 32,
              ),
              expandedAlignment: Alignment.topLeft,
              childrenPadding: EdgeInsets.all(10),
              children: [
                Text(
                  "Car 1",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Car 2",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Car 3",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Car 4",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Car 5",
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
