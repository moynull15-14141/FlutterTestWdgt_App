import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class List_view extends StatefulWidget {
  const List_view({super.key});

  @override
  State<List_view> createState() => _List_viewState();
}

class _List_viewState extends State<List_view> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 255, 74, 77),
            title: Text(
              "ListView.Builder",
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
          body: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext Context, int index) {
                return Container(
                  height: 75,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: Text(index.toString()),
                    ),
                    title: Text('Item $index'),
                    subtitle: Text('This Item subtitel'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                );
              })),
    );
  }
}
