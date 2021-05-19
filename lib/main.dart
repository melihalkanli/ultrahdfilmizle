import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ultrahdfilmizle/Screens/AnaEkran.dart';
import 'package:ultrahdfilmizle/Screens/LoginScreen.dart';
import 'package:ultrahdfilmizle/Screens/UyeolUyg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/üyeol": (context) => UyeolUyg(),
        "/anaekran": (context) => StatefulKonusu()
      },
    );
  }
}
