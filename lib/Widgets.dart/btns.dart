import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buttons extends StatefulWidget {
  const buttons({super.key});

  @override
  State<buttons> createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {
  String click = 'Click';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
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
                padding: const EdgeInsets.all(12.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Elevated Button',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple[500]),
                              onPressed: () {},
                              child: Text(
                                'Elevated Button',
                                style: TextStyle(fontSize: 16),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: () {},
                              child: Text(
                                'Elevated Button',
                                style: TextStyle(fontSize: 16),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Text Button',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Text-Button',
                                style: TextStyle(fontSize: 16),
                              )),
                          TextButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.grey),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Text-Button',
                                style: TextStyle(fontSize: 16),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 6,
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Outline Button',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Outline Button',
                                style: TextStyle(color: Colors.black),
                              )),
                          OutlinedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.grey)),
                              onPressed: () {},
                              child: Text(
                                'Outline Button',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 6,
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Icon Button',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.message,
                                size: 35,
                                color: Colors.red,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.home,
                                size: 35,
                                color: Colors.green,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                      ),
                      Text('Dropdown Button',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      Row(
                        children: [
                          DropdownButton(
                              hint: Text('Click'),
                              items: [
                                DropdownMenuItem(
                                    value: 'Option 1', child: Text('Option 1')),
                                DropdownMenuItem(
                                    value: 'Option 1', child: Text('Option 1'))
                              ],
                              onChanged: (val) {
                                setState(() {
                                  click = val.toString();
                                });
                              })
                        ],
                      ),
                      Text(
                        'PopUp Menu Button',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          PopupMenuButton(
                              offset: Offset(50, 20),
                              child: Row(
                                children: [
                                  Text('Popup Menu'),
                                ],
                              ),
                              itemBuilder: (context) {
                                return const [
                                  PopupMenuItem(
                                      value: 'Home', child: Text('Home')),
                                  PopupMenuItem(
                                      value: 'Call', child: Text('Call')),
                                  PopupMenuItem(
                                      value: 'Message', child: Text('Message'))
                                ];
                              })
                        ],
                      ),
                    ]))));
  }
}
