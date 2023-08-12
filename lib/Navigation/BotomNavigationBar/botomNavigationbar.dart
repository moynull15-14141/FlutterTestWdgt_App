import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tst1/Navigation/BotomNavigationBar/CallNav.dart';
import 'package:tst1/Navigation/BotomNavigationBar/HomepageNav.dart';
import 'package:tst1/Navigation/BotomNavigationBar/notificitionnav.dart';

class botomNavigationbar extends StatefulWidget {
  const botomNavigationbar({super.key});

  @override
  State<botomNavigationbar> createState() => _botomNavigationbarState();
}

class _botomNavigationbarState extends State<botomNavigationbar> {
  int selected = 0;
  List<Widget> viwe = [HomepageNav(), callNav(), notificationNav()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "Bottom Nav Bar",
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
      body: Center(
        child: viwe.elementAt(selected),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
        ],
        currentIndex: selected,
        onTap: (int index) {
          setState(() {
            selected = index;
          });
        },
      ),
    ));
  }
}
