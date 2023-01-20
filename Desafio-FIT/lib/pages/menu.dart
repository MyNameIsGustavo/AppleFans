import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffb7b7b7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "HomeScreen");
                },
                child: Text("Apple history",
                    style: TextStyle(fontSize: 18, color: Colors.black))),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "PageTwo");
              },
              child: Text("Jobs and Wozniak",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "PageThree");
              },
              child: Text("iPhone history",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "PageFour");
              },
              child: Text("iPod history",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "PageFive");
              },
              child: Text("Disclaimer",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/");
              },
              child: Text("Logout",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
            Text(
              "Designed by Gustavo Rocha.",
              style: TextStyle(fontSize: 18, color: Colors.black),
            )
          ],
        ));
  }
}
