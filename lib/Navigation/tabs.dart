import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tabs extends StatefulWidget {
  const tabs({super.key});

  @override
  State<tabs> createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "Tabs",
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
      body: Scaffold(
        appBar: AppBar(
          title: Text("Tabss"),
        ),
        body: mytabs(),
      ),
    ));
  }
}

class mytabs extends StatefulWidget {
  const mytabs({super.key});

  @override
  State<mytabs> createState() => _mytabsState();
}

class _mytabsState extends State<mytabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.phone),
              ),
              Tab(
                icon: Icon(Icons.message),
              ),
            ],
          ),
          Expanded(
              child: TabBarView(children: [
            Center(
              child: Text('Home'),
            ),
            Center(
              child: Text('Phone'),
            ),
            Center(
              child: Text('message'),
            ),
          ]))
        ],
      ),
    );
  }
}
