import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:desafiofit/pages/homeScreen.dart';
import 'package:desafiofit/pages/iPhoneScreen.dart';
import 'package:desafiofit/pages/loginScreen.dart';
import 'package:desafiofit/pages/menu.dart';
import 'package:desafiofit/pages/JobsAndWozniakScreen.dart';
import 'package:desafiofit/pages/iPhoneScreen.dart';
import 'package:desafiofit/pages/iPodScreen.dart';
import 'package:desafiofit/pages/disclaimer.dart';

void main() {
  runApp(
    Aplicativo(),
  );
}

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => loginScreen(),
        "HomeScreen": (context) => HomeScreen(),
        "PageTwo": (context) => PageTwo(),
        "PageThree": (context) => PageThree(),
        "PageFour": (context) => PageFour(),
        "PageFive": (context) => PageFive(),
      },
    );
  }
}
