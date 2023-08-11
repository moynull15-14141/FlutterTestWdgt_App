import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sliver_app_bar extends StatefulWidget {
  const Sliver_app_bar({super.key});

  @override
  State<Sliver_app_bar> createState() => _Sliver_app_barState();
}

class _Sliver_app_barState extends State<Sliver_app_bar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 74, 77),
        title: Text(
          "Slivier AppBar",
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Sliver Appbar",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              background: Image(
                image: NetworkImage(
                    'https://img.freepik.com/premium-photo/cloudy-sky-mountains-river-lake-landscape-design-illustration-ai-generated-children-s-books-story-illustrations-fairytales_467123-24168.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            ),
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            ),
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            ),
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            ),
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            ),
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            ),
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            ),
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            ),
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            ),
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            ),
            ListTile(
              title: Text('pollob'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              subtitle: Text('Subtitel'),
            )
          ]))
        ],
      ),
    ));
  }
}
