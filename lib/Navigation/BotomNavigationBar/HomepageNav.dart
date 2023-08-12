import 'package:flutter/material.dart';

class HomepageNav extends StatefulWidget {
  const HomepageNav({super.key});

  @override
  State<HomepageNav> createState() => _HomepageNavState();
}

class _HomepageNavState extends State<HomepageNav> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Icon(
          Icons.home,
          size: 60,
        ),
      ),
    ));
  }
}
