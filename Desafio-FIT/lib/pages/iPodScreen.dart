import 'package:flutter/material.dart';
import 'package:desafiofit/pages/menu.dart';

class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Menu(),
      ),
      body: conteudoPageFour(),
    );
  }
}

class conteudoPageFour extends StatefulWidget {
  _conteudoPageFourState createState() => _conteudoPageFourState();
}

class _conteudoPageFourState extends State<conteudoPageFour> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 25)),
          Text(
            "Welcome, AppleLover!",
            style: TextStyle(fontSize: 18, fontFamily: 'Inter'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: 25,
              right: 25,
            ),
            child: SizedBox(
              child: ClipRRect(
                  child: Image.asset("assets/iPodJobs.jpg"),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Apple Park - Cupertino, Califórnia.🌍",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
            bottom: 25,
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 110,
                width: 300,
                child: Text(
                  "This APP was developed to share the admiration for the most different and valuable company in the world. Apple was founded in 1976 by Steve Jobs and Steve Wozniak in Silicon Valley.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16, fontFamily: 'Inter'),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "PageFive");
                },
                child: Text("Android!",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                style: TextButton.styleFrom(
                  fixedSize: Size(200, 50),
                  backgroundColor: Color(0xff525252),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}