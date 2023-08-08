import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class stsful extends StatefulWidget {
  const stsful({super.key});

  @override
  State<stsful> createState() => _stsfulState();
}

enum lan { Dart, C, Python, Java }

class _stsfulState extends State<stsful> {
  bool valu = false;
  bool value = false;
  double value1 = 0;
  lan Selected = lan.Dart;

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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Switch',
                  style: TextStyle(fontSize: 16),
                ),
                Switch(
                    value: valu,
                    onChanged: (bool val) {
                      setState(() {
                        valu = val;
                      });
                    })
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Check Box',
                  style: TextStyle(fontSize: 16),
                ),
                Checkbox(
                    value: value,
                    onChanged: (val1) {
                      setState(() {
                        value = val1!;
                      });
                    })
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Slider',
                  style: TextStyle(fontSize: 16),
                ),
                Slider(
                    value: value1,
                    onChanged: (double val1) {
                      setState(() {
                        value1 = val1;
                      });
                    })
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Linier Progress Indicator',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                LinearProgressIndicator()
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Circular Progress',
                  style: TextStyle(fontSize: 16),
                ),
                CircularProgressIndicator()
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "Radio",
                    style: TextStyle(fontSize: 20),
                  ),
                  ListTile(
                    title: Text('Dart'),
                    leading: Radio(
                      value: lan.Dart,
                      groupValue: Selected,
                      onChanged: (value) {
                        setState(() {
                          Selected = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('C'),
                    leading: Radio(
                      value: lan.C,
                      groupValue: Selected,
                      onChanged: (value) {
                        setState(() {
                          Selected = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('Python'),
                    leading: Radio(
                      value: lan.Python,
                      groupValue: Selected,
                      onChanged: (value) {
                        setState(() {
                          Selected = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('Java'),
                    leading: Radio(
                      value: lan.Java,
                      groupValue: Selected,
                      onChanged: (value) {
                        setState(() {
                          Selected = value!;
                        });
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
