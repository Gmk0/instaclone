import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter instagramm",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
          ),
          title: Center(
            child: Image.asset(
              "assets/images/instagram-logo.png",
              height: 60,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),

        //single child pour scroller la colonne
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 100,
              color: Colors.blue,
            ),
            Container(
              height: 1000,
              color: Colors.red,
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey.shade700,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera_alt_outlined), label: 'add photo'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: 'favoris'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outlined), label: 'Profile'),
            ]),
      ),
    );
  }
}
