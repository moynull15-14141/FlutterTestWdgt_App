import 'package:flutter/material.dart';
import 'package:tst1/Animation/cover_jpg.dart';
import 'package:tst1/Animation/profile.dart';

class heros extends StatefulWidget {
  const heros({super.key});

  @override
  State<heros> createState() => _herosState();
}

class _herosState extends State<heros> {
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
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: const Color.fromARGB(255, 255, 249, 249),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                    ),
                    Icon(Icons.videocam, size: 30),
                    Icon(Icons.group_rounded, size: 30),
                    Icon(Icons.notifications, size: 30),
                    Icon(Icons.menu, size: 30)
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => cover_jpg()));
                },
                child: Hero(
                  tag: "cover",
                  child: Image(
                    image: AssetImage("images/cover.jpg"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 365,
              left: 10,
              child: SizedBox(
                height: 150,
                width: 150,
                child: ClipOval(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (Context) => profiles()));
                    },
                    child: Hero(
                        tag: "profile",
                        child: Image(image: AssetImage("images/profile.jpg"))),
                  ),
                ),
              )),
          Positioned(
            bottom: 368,
            left: 120,
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(
                Icons.camera_alt,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 345,
            bottom: 412,
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(
                Icons.camera_alt,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 345,
            bottom: 470,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.face_2,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              bottom: 310,
              left: 20,
              child: Text(
                "MH Pollob",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              )),
          Positioned(
              bottom: 280,
              left: 20,
              child: Text(
                "................... S c I o n ..................",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              )),
          Positioned(
              bottom: 240,
              left: 20,
              child: Text(
                "শূন্যতা নই পূর্ণতাই তোমাকে অবহেলীত করে তুলবে 🙂",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
          Positioned(
              bottom: 190,
              left: 20,
              child: Row(
                children: [
                  ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          Text(
                            "Add to story",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          Text(
                            "Edit profile",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 40,
                    width: 45,
                    child: OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.white),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        )),
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}
