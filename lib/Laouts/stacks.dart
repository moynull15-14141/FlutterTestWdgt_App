import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class stacks extends StatefulWidget {
  const stacks({super.key});

  @override
  State<stacks> createState() => _stacksState();
}

// enum dropdownvalue { Top_start, Top_End, Top_Center, Center }

class _stacksState extends State<stacks> {
  List dropdownvalue = ['Top_Strat', 'Top_End', 'Top_Center', 'center'];
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(child: dropdownvalue == dropdownvalue[1] ? s_c() : s_te()),
          DropdownButton(
              hint: Text('Select Derection'),
              items: [
                DropdownMenuItem(
                  value: dropdownvalue[0],
                  child: Text('Top strat'),
                  onTap: () {
                    s_tc();
                  },
                ),
                DropdownMenuItem(
                  value: dropdownvalue[1],
                  child: Text('Top Center'),
                  onTap: () {
                    s_tc();
                  },
                ),
                DropdownMenuItem(
                  value: dropdownvalue[2],
                  child: Text('Top End'),
                  onTap: () {
                    s_te();
                  },
                ),
                DropdownMenuItem(
                  value: dropdownvalue[3],
                  child: Text('Center'),
                  onTap: () {
                    s_c();
                  },
                )
              ],
              onChanged: (value) {
                setState(() {});
              })
        ],
      ),
    ));
  }
}

class s_ts extends StatefulWidget {
  const s_ts({super.key});

  @override
  State<s_ts> createState() => _s_tsState();
}

class _s_tsState extends State<s_ts> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(color: Colors.green),
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(color: Colors.blue[800]),
        ),
        Text(
          'Container',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}

class s_tc extends StatefulWidget {
  const s_tc({super.key});

  @override
  State<s_tc> createState() => _s_tcState();
}

class _s_tcState extends State<s_tc> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(color: Colors.green),
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(color: Colors.blue[800]),
        ),
        Text(
          'Container',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}

class s_te extends StatefulWidget {
  const s_te({super.key});

  @override
  State<s_te> createState() => _s_teState();
}

class _s_teState extends State<s_te> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(color: Colors.green),
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(color: Colors.blue[800]),
        ),
        Text(
          'Container',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}

class s_c extends StatefulWidget {
  const s_c({super.key});

  @override
  State<s_c> createState() => _s_cState();
}

class _s_cState extends State<s_c> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(color: Colors.green),
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(color: Colors.blue[800]),
        ),
        Text(
          'Container',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}
