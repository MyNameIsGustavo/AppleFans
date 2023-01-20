import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  String? email = "";
  String? senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffffffff),
              Color(0xff5e5e5e),
            ],
          ),
        ),
        padding: EdgeInsets.only(
          top: 60,
          left: 35,
          right: 35,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 250,
              height: 100,
              child: Image.asset("assets/loginAsset.png"),
            ),
            Padding(padding: EdgeInsets.all(50)),
            TextField(
              onChanged: (inputEmail) {
                email = inputEmail;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Fit@gmail.com",
                prefixIcon: Icon(Icons.mail_outline, color: Colors.black),
                labelText: "Email:",
                labelStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'Inter',
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
            Padding(padding: EdgeInsets.all(25)),
            TextField(
              onChanged: (inputSenha) {
                senha = inputSenha;
              },
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Senha:",
                  hintText: "123",
                  prefixIcon:
                      Icon(Icons.password_outlined, color: Colors.black),
                  labelStyle: TextStyle(
                      fontSize: 18, color: Colors.black, fontFamily: 'Inter'),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            Padding(padding: EdgeInsets.all(25)),
            TextButton(
              onPressed: () {
                if (email == "adm" && senha == "adm")
                  Navigator.popAndPushNamed(context, "HomeScreen");
                else
                  print("Usuário ou senha incorretos.");
              },
              child: Text("Login",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              style: TextButton.styleFrom(
                fixedSize: Size(200, 33),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
