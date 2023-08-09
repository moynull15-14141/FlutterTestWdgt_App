import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/widgetsList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(199, 175, 188, 255)),
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 1.0,
                child: ListTile(
                  leading: Icon(Icons.widgets),
                  title: Text(
                    'Widgets',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text("All Type Widgets"),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetsList()));
                      },
                      icon: Icon(Icons.arrow_forward_ios)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(199, 175, 188, 255)),
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 1.0,
                child: ListTile(
                  leading: Icon(Icons.layers),
                  title: Text(
                    'Layouts',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text("All Type Layouts"),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetsList()));
                      },
                      icon: Icon(Icons.arrow_forward_ios)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}