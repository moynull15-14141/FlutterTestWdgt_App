import 'package:flutter/material.dart';

class cover_jpg extends StatefulWidget {
  const cover_jpg({super.key});

  @override
  State<cover_jpg> createState() => _cover_jpgState();
}

class _cover_jpgState extends State<cover_jpg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: TextButton(
            style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.black)),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MH Pollob",
                  style: TextStyle(fontSize: 22),
                ),
                Icon(Icons.arrow_drop_down)
              ],
            )),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 30,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      body: Column(
        children: [
          Hero(
              tag: "cover",
              child: Image(
                image: AssetImage("images/cover.jpg"),
                height: 600,
                width: 500,
              ))
        ],
      ),
    ));
  }
}
