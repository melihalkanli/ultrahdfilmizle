import 'package:flutter/material.dart';

import 'package:ultrahdfilmizle/Screens/AnaEkran.dart';

class UyeolUyg extends StatefulWidget {
  @override
  _UyeolUygState createState() => _UyeolUygState();
}

class _UyeolUygState extends State<UyeolUyg> {
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
                    Image.asset('assets/images/domdom.gif'),
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
                              height: 15,
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
                                    hintText: "Kullanıcı Adınız:",
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.grey[600],
                                    ))),
                            SizedBox(
                              height: 15,
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
                                  Radius.circular(16.0),
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
                                  'Üye Ol',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
        ));
  }
}
