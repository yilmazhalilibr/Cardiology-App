import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ExternalWidget/NavigatorBottom.dart';
import '../anaSayfa.dart';
import 'atamaCevaplar.dart';

class cikanSonuc extends StatelessWidget {
  const cikanSonuc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white30,
        body: SafeArea(
          child: SingleChildScrollView(child: cikanSonucEx()),
        ),
        bottomNavigationBar: NavigationBottom(),
      ),
    );
  }
}

class cikanSonucEx extends StatefulWidget {
  const cikanSonucEx({Key? key}) : super(key: key);

  @override
  _cikanSonucExState createState() => _cikanSonucExState();
}

class _cikanSonucExState extends State<cikanSonucEx> {
  @override
  var listText = puan >= 15 ? AciklamaX[1] : AciklamaX[0];
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50.0,
      ),
      child: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.red,
                    Colors.pink,
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              width: 350,
              height: 550,
            ),
            Positioned(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 35.0, left: 10),
                    child: Text(
                      'Sonuç : ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 300,
                      width: 350,
                      child: Text(
                        '$puan $listText',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.black,
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          'Anasayfaya Dön',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const anaSayfa(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
