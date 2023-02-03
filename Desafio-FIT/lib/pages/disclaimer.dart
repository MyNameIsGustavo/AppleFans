import 'package:desafiofit/pages/menu.dart';
import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: conteudoPageFive(),
    );
  }
}

class conteudoPageFive extends StatefulWidget {
  const conteudoPageFive({Key? key}) : super(key: key);
  _conteudoPageFiveState createState() => _conteudoPageFiveState();
}

class _conteudoPageFiveState extends State<conteudoPageFive> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 25)),
          Text(
            "IOS and Android?",
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
                  child: Image.asset("assets/disclaimer.jpg"),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "IOS and Android - Smartphones.🌍",
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
                height: 170,
                width: 300,
                child: Text(
                  "This was my first APP in Flutter. I took the liberty of creating an APP dedicated to Apple fans that would work on the Android operating system because this functionality of flutter is amazing, developing APP's for IOS and Android. LOL🤣😂🤣.",
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
                  Navigator.popAndPushNamed(context, "/");
                },
                child: Text("IOS & Android",
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
