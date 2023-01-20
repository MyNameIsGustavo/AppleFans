import 'package:desafiofit/pages/menu.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Menu(),
      ),
      body: conteudoPageTwo(),
    );
  }
}

class conteudoPageTwo extends StatefulWidget {
  _conteudoPageTwoState createState() => _conteudoPageTwoState();
}

class _conteudoPageTwoState extends State<conteudoPageTwo> {
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
                  child: Image.asset("assets/JobsAndWozniak.jpg"),
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
                  Navigator.popAndPushNamed(context, "PageThree");
                },
                child: Text("A new vision",
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
