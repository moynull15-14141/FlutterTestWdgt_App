import 'package:flutter/material.dart';

class callNav extends StatefulWidget {
  const callNav({super.key});

  @override
  State<callNav> createState() => _callNavState();
}

class _callNavState extends State<callNav> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Icon(
          Icons.call,
          size: 60,
        ),
      ),
    ));
  }
}
