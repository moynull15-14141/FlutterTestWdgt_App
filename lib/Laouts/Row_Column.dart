import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Row_column extends StatefulWidget {
  const Row_column({super.key});

  @override
  State<Row_column> createState() => _Row_columnState();
}

class _Row_columnState extends State<Row_column> {
  String option = 'Column';
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
            body: Center(
                child: Column(
              children: [
                ListTile(
                  title: Text("Column"),
                  leading: Radio(
                    value: 'Column',
                    groupValue: option,
                    onChanged: (value) {
                      setState(() {
                        option = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("Row"),
                  leading: Radio(
                    value: 'Row',
                    groupValue: option,
                    onChanged: (value) {
                      setState(() {
                        option = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: Container(
                  child: Center(
                    child: option == 'Column' ? Clm() : rows(),
                  ),
                ))
              ],
            ))));
  }
}

class Clm extends StatefulWidget {
  const Clm({super.key});

  @override
  State<Clm> createState() => _ClmState();
}

class _ClmState extends State<Clm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.star,
          size: 60,
        ),
        Icon(
          Icons.star,
          size: 90,
        ),
        Icon(
          Icons.star,
          size: 60,
        ),
      ],
    );
  }
}

class rows extends StatefulWidget {
  const rows({super.key});

  @override
  State<rows> createState() => _rowsState();
}

class _rowsState extends State<rows> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.star, size: 60),
        Icon(Icons.star, size: 90),
        Icon(Icons.star, size: 60),
      ],
    );
  }
}
