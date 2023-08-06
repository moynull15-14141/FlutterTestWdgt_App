import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(TstApp());
}

class TstApp extends StatefulWidget {
  const TstApp({super.key});

  @override
  State<TstApp> createState() => _TstAppState();
}

class _TstAppState extends State<TstApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
