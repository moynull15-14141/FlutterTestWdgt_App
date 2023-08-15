import 'package:flutter/material.dart';

class profiles extends StatefulWidget {
  const profiles({super.key});

  @override
  State<profiles> createState() => _profilesState();
}

class _profilesState extends State<profiles> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          InkWell(
              child: Hero(
                  tag: "profile",
                  child: Image(image: AssetImage("images/profile.jpg"))))
        ],
      ),
    ));
  }
}
