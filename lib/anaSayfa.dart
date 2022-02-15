import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kardiyoloji/ayarlar.dart';
import 'package:kardiyoloji/genelTest/genelTest.dart';

import 'STY/styCozum.dart';
import 'STY/values.dart';
import 'Semptomlar/testCozum.dart';

class anaSayfa extends StatelessWidget {
  const anaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Hoş geldiniz',
            style: TextStyle(
                color: Color(0xfFd21727),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ayarlar(),
                  ),
                );
              },
              icon: Icon(
                Icons.build,
                color: Colors.red,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: anaSayfaModel(),
        ),
      ),
    );
  }
}

class anaSayfaModel extends StatefulWidget {
  const anaSayfaModel({Key? key}) : super(key: key);

  @override
  _anaSayfaModelState createState() => _anaSayfaModelState();
}

class _anaSayfaModelState extends State<anaSayfaModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 800,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              width: 400,
              height: 220,
              child: Stack(
                children: <Widget>[
                  MyMotherContainer(),
                  Positioned(
                    left: 40,
                    bottom: 64,
                    child: greenBox(),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 400,
              height: 220,
              child: Stack(
                children: <Widget>[
                  MyMotherContainer1(),
                  Positioned(
                    left: 40,
                    bottom: 60,
                    child: greenBox(),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 400,
              height: 300,
              child: Stack(
                children: <Widget>[
                  MyMotherContainer2(),
                  Positioned(
                    left: 40,
                    bottom: 60,
                    child: greenBox(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyMotherContainer extends StatelessWidget {
  const MyMotherContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10),
      child: Container(
        width: 380,
        height: 150,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const testCozum(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 90.0),
            child: Text(
              'Semptomlar',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          color: Color(0xffd21727),
        ),
      ),
    );
  }
}

class MyMotherContainer1 extends StatelessWidget {
  const MyMotherContainer1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10),
      child: Container(
        width: 380,
        height: 150,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const STY_Testi(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 90.0),
            child: Text(
              'STY',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          color: Color(0xffd21727),
        ),
      ),
    );
  }
}

class MyMotherContainer2 extends StatelessWidget {
  const MyMotherContainer2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10),
      child: Container(
        width: 380,
        height: 150,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
            print(valueSettings);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => genelTest(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 90.0),
            child: Text(
              'Genel Test',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          color: Color(0xffd21727),
        ),
      ),
    );
  }
}

class greenBox extends StatefulWidget {
  const greenBox({Key? key}) : super(key: key);

  @override
  _greenBoxState createState() => _greenBoxState();
}

class _greenBoxState extends State<greenBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade700, blurRadius: 10, spreadRadius: 0.1)
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        image: const DecorationImage(
          image: AssetImage("assets/image1.png"),
          fit: BoxFit.scaleDown,
        ),
      ),
      width: 110,
      height: 130,
    );
  }
}
