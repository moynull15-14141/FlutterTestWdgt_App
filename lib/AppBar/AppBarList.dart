import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tst1/AppBar/Basic_AppBar.dart';
import 'package:tst1/AppBar/BotomAppbar.dart';
import 'package:tst1/AppBar/SlivirAppbar.dart';

class AppBarList extends StatefulWidget {
  const AppBarList({super.key});

  @override
  State<AppBarList> createState() => _AppBarListState();
}

class _AppBarListState extends State<AppBarList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "App Bar",
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
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => Basic_app_bar()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Color.fromARGB(199, 175, 188, 255),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    ListTile(
                      title: Text(
                        'Basic AppBar',
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
                    MaterialPageRoute(builder: (Context) => Botom_app_bar()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Color.fromARGB(199, 175, 188, 255),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    ListTile(
                      title: Text(
                        'Botom AppBar',
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
                    MaterialPageRoute(builder: (Context) => Sliver_app_bar()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Color.fromARGB(199, 175, 188, 255),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    ListTile(
                      title: Text(
                        'Slivier AppBar',
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
      ),
    ));
  }
}
