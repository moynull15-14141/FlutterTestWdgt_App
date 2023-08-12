import 'package:flutter/material.dart';

class notificationNav extends StatefulWidget {
  const notificationNav({super.key});

  @override
  State<notificationNav> createState() => _notificationNavState();
}

class _notificationNavState extends State<notificationNav> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Icon(
          Icons.notifications,
          size: 60,
        ),
      ),
    ));
  }
}
