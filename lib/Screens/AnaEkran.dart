import 'package:flutter/material.dart';

void main() {
  runApp(StatefulKonusu());
}

class StatefulKonusu extends StatefulWidget {
  @override
  _StatefulKonusuState createState() => _StatefulKonusuState();
}

class _StatefulKonusuState extends State<StatefulKonusu> {
  int sekme = 0;

  var sonSekme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sonSekme,
      backgroundColor: Color(0xff1F1A24),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Ana Sayfa"),
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("Kategoriler"),
            backgroundColor: Color(0xffFFEB3B),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Film Ara"),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Favorilerim"),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            backgroundColor: Colors.green,
            title: Text("Profil"),
          )
        ],
        currentIndex: sekme,
        onTap: (int i) {
          switch (i) {
            case 0:
              print("tıkladığınız oge anasayfa");
              setState(() {
                sekme = 0;
                sonSekme = anaSayfa();
              });
              break;
            case 1:
              print("tıkladığınız oge Kategori");
              setState(() {
                sekme = 1;
                sonSekme = kategoriler();
              });
              break;
            case 2:
              print("tıkladığınız oge film ara");
              setState(() {
                sekme = 2;
                sonSekme = filmara();
              });
              break;
            case 3:
              print("tıkladığınız oge Favori kaydet");
              setState(() {
                sekme = 3;
                sonSekme = favorikaydet();
              });
              break;
            case 4:
              print("tıkladığınız oge profil");
              setState(() {
                sekme = 4;
                sonSekme = profil();
              });
              break;
          }
        },
      ),
    );
  }
}

Widget anaSayfa() {
  return Scaffold(
    backgroundColor: Color(0xff1F1A24),
    appBar: AppBar(
      backgroundColor: Color(0xff121212),
      automaticallyImplyLeading: false,
      title: Text(
        'Son Eklenenler',
      ),
      centerTitle: true,
    ),
    body: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[],
      ),
    ),
  );
}

Widget kategoriler() {
  return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff1F1A24),
          appBar: AppBar(
            backgroundColor: Color(0xff121212),
            toolbarHeight: 45,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
                child: Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Center(
                    child: Column(children: [
                      FlatButton(
                        onPressed: () {},
                        child: Container(
                          height: 130,
                          width: 230,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(16),
                              color: Colors.orange,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/aksiyon_bir.jpg'),
                                  fit: BoxFit.cover)),
                          child: Align(
                            child: Text(
                              'Aksiyon',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 27),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FlatButton(
                          onPressed: () {},
                          child: Container(
                            height: 130,
                            width: 230,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(16),
                                color: Colors.orange,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/animasyon_bir.jpg'),
                                    fit: BoxFit.cover)),
                            child: Align(
                              child: Text(
                                'Animasyon',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 27),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      FlatButton(
                          onPressed: () {},
                          child: Container(
                            height: 130,
                            width: 230,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(16),
                                color: Colors.orange,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/bilimkurgu_bir.jpg'),
                                    fit: BoxFit.cover)),
                            child: Align(
                              child: Text(
                                'Bilim Kurgu',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 27),
                              ),
                            ),
                          ))
                    ]),
                  )),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                  onPressed: () {},
                  child: Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(16),
                        color: Colors.orange,
                        image: DecorationImage(
                            image: AssetImage('assets/images/dram_bir.jpg'),
                            fit: BoxFit.cover)),
                    child: Align(
                      child: Text(
                        'Dram',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.orange, fontSize: 27),
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                  onPressed: () {},
                  child: Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(16),
                        color: Colors.orange,
                        image: DecorationImage(
                            image: AssetImage('assets/images/komedi_bir.jpg'),
                            fit: BoxFit.cover)),
                    child: Align(
                      child: Text(
                        'Komedi',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.orange, fontSize: 27),
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                  height: 130,
                  width: 230,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(16),
                      color: Colors.orange,
                      image: DecorationImage(
                          image: AssetImage('assets/images/korku_bir.jpg'),
                          fit: BoxFit.cover)),
                  child: Align(
                    child: Text(
                      'Korku',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.orange, fontSize: 27),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                  onPressed: () {},
                  child: Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(16),
                        color: Colors.orange,
                        image: DecorationImage(
                            image: AssetImage('assets/images/gerilim_bir.jpg'),
                            fit: BoxFit.cover)),
                    child: Align(
                      child: Text(
                        'Gerilim',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.orange, fontSize: 27),
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                  onPressed: () {},
                  child: Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(16),
                        color: Colors.orange,
                        image: DecorationImage(
                            image: AssetImage('assets/images/macera_bir.jpg'),
                            fit: BoxFit.cover)),
                    child: Align(
                      child: Text(
                        'Macera',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.orange, fontSize: 27),
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                  onPressed: () {},
                  child: Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(16),
                        color: Colors.orange,
                        image: DecorationImage(
                            image: AssetImage('assets/images/savaş_bir.jpg'),
                            fit: BoxFit.cover)),
                    child: Align(
                      child: Text(
                        'Savaş',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.orange, fontSize: 27),
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                  onPressed: () {},
                  child: Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(16),
                        color: Colors.orange,
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/fantastik_bir.jpg'),
                            fit: BoxFit.cover)),
                    child: Align(
                      child: Text(
                        'Fantastik',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.orange, fontSize: 27),
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                  onPressed: () {},
                  child: Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(16),
                        color: Colors.orange,
                        image: DecorationImage(
                            image: AssetImage('assets/images/polisiye_bir.jpg'),
                            fit: BoxFit.cover)),
                    child: Align(
                      child: Text(
                        'Polisiye',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.orange, fontSize: 27),
                      ),
                    ),
                  ))
            ])),
          )));
}

Widget filmara() {
  return Scaffold(
      backgroundColor: Color(0xff1F1A24),
      appBar: AppBar(
        backgroundColor: Color(0xff121212),
        toolbarHeight: 50,
        title: Text('Film Arayın'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ));
}

Widget favorikaydet() {
  return Center(
    child: Text(
      'FavoriKaydetme Button',
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 20.0),
    ),
  );
}

Widget profil() {
  return Center(
    child: Text(
      'Profil button',
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 20.0),
    ),
  );
}
