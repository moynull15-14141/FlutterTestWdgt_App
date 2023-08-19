import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tst1/Widgets/imags.dart';
import 'package:tst1/Widgets/statefullWidgets.dart';
import 'package:tst1/Widgets/textfeld.dart';
import 'package:tst1/Widgets/texts.dart';

import 'btns.dart';
import 'containers.dart';
import 'dateTime.dart';
import 'icons.dart';

class WidgetsList extends StatefulWidget {
  const WidgetsList({super.key});

  @override
  State<WidgetsList> createState() => _WidgetsListState();
}

class _WidgetsListState extends State<WidgetsList> {
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
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "WidgetsList",
                  style: GoogleFonts.ebGaramond(
                      fontSize: 26, fontWeight: FontWeight.w400),
                ),
                Divider(
                  height: 6,
                  thickness: 1,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => Containers()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(199, 175, 188, 255),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Container',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => icons()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(199, 175, 188, 255),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Icon',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => texts()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(199, 175, 188, 255),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Text',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => textfeld()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(199, 175, 188, 255),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Textfeld',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => images()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(199, 175, 188, 255),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Image',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => buttons()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(199, 175, 188, 255),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Buttons',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => stsful()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(199, 175, 188, 255),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'StateFul Widgets',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => datetime()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(199, 175, 188, 255),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Date-Time',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
