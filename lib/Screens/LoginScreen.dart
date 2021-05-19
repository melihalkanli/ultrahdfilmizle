import 'package:flutter/material.dart';
import 'package:ultrahdfilmizle/Screens/AnaEkran.dart';

import 'package:ultrahdfilmizle/Screens/UyeolUyg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 30.0),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.lime,
                      backgroundImage: AssetImage('assets/images/resim_12.png'),
                    ),
                    Text('HD Film İzle',
                        style: TextStyle(
                            fontFamily: 'Bangers',
                            fontSize: 30,
                            color: Colors.brown,
                            fontStyle: FontStyle.italic)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Gelin Hep Beraber İzleyelim',
                        style: TextStyle(
                            fontFamily: 'Bangers',
                            fontSize: 17,
                            color: Colors.brown,
                            fontStyle: FontStyle.italic)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 15.0, 20.0, 15.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFFFFF),
                                  hintText: "E-mail adresiniz:",
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.grey[600],
                                  )),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 15.0, 20.0, 15.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFFFFF),
                                  hintText: "Şifreniz:",
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.grey[600],
                                  )),
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(32.0),
                                ),
                                color: Colors.brown,
                              ),
                              child: MaterialButton(
                                minWidth: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              StatefulKonusu()));
                                },
                                child: Text(
                                  'Giriş Yap',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(32.0),
                                ),
                                color: Colors.brown,
                              ),
                              child: MaterialButton(
                                minWidth: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => UyeolUyg()));
                                },
                                child: Text(
                                  'Üye Ol',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
