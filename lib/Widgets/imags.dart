import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class images extends StatefulWidget {
  const images({super.key});

  @override
  State<images> createState() => _imagesState();
}

class _imagesState extends State<images> {
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
              fontWeight: FontWeight.w500,
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text('Iamges', style: GoogleFonts.habibi(fontSize: 28)),
                ],
              ),
            ),
            Divider(
              height: 3,
              color: Colors.black,
              indent: 0.0,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
              child: Image.network(
                "https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_760/MTk2Nzg0MjYxNjk5NzQxMzE0/cats-that-look-like-tigers-leopards-and-cheetahs.webp",
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Cat',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 15.0,
                      spreadRadius: 4.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://cutewallpaper.org/28/data-science-wallpaper-blue/data-scientist-wallpapers-top-free-data-scientist-backgrounds--wallpaperaccess.png',
                      ),
                      fit: BoxFit.cover),
                  color: Color.fromARGB(255, 72, 66, 255),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://mensline.org.au/wp-content/uploads/2020/05/Excuses-header-1024x683.jpg'),
                      radius: 40,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Name:Md.Hasan',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                    Text('Id:201-15-14141',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                    Text('Section:55-H',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
