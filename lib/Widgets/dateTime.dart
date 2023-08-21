import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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
                  left: 55,
                  top: 20,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 600),
                      child: Card(
                        elevation: 10,
                        color: Colors.black12,
                        child: Text(
                          "${DateFormat('yMMMM').format(DateTime.now())}",
                          style: TextStyle(fontSize: 50),
                        ),
                      )),
                ),
                Positioned(
                  left: 110,
                  top: 120,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 600),
                      child: Card(
                        elevation: 10,
                        color: Colors.black12,
                        child: Text(
                          "${DateFormat('Hms').format(DateTime.now())}",
                          style: TextStyle(fontSize: 40),
                        ),
                      )),
                ),
                Positioned(
                  bottom: 240,
                  left: 75,
                  child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 1),
                              blurRadius: 10,
                            )
                          ]),
                      child: Container(
                        height: 20,
                        width: 250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                                child: Text(
                                  "${DateFormat('Hm').format(DateTime.now())}",
                                  style: TextStyle(
                                      fontSize: 60, color: Colors.black38),
                                ),
                                onPressed: () async {
                                  TimeOfDay? timepicker = await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now());
                                }),
                            IconButton(
                                onPressed: () async {
                                  DateTime? datepicker = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1955),
                                      lastDate: DateTime(5000));

                                  if (datepicker != null) {
                                    print(
                                        'Selected Time : ${datepicker.day}-${datepicker.hour}-${datepicker.second}');
                                  }
                                },
                                icon: Icon(
                                  Icons.calendar_month,
                                  size: 40,
                                ))
                          ],
                        ),
                      )),
                )
              ],
            )));
  }
}
