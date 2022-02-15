import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kardiyoloji/STY/values.dart';

import '7.soruTest.dart';

class STY_Testi extends StatelessWidget {
  const STY_Testi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: SingleChildScrollView(
            child: styExtends(),
          ),
        ),
      ),
    );
  }
}

class styExtends extends StatefulWidget {
  const styExtends({Key? key}) : super(key: key);

  @override
  _styExtendsState createState() => _styExtendsState();
}

class _styExtendsState extends State<styExtends> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0, bottom: 4),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white12,
                Colors.white12,
              ],
            ),
          ),
          width: 405,
          height: universalHeight,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Belirgin STY varsa',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: const Divider(
                  color: Colors.black,
                  thickness: 2,
                  height: 1,
                  indent: 100,
                  endIndent: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  height: conLow,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.pink,
                        Colors.blue,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 6, color: color, spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              value = !value;
                              if (value == true) {
                                conLow = 50;
                                color = Colors.black;
                                textColor = Colors.transparent;
                                universalHeight -= 80;
                              } else {
                                conLow = 160;
                                color = Colors.white;
                                textColor = Colors.black;
                                universalHeight += 80;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Adım 1 ▼',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.cyan),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(
                                    () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Text('Örnek Başlık'),
                                        elevation: 2,
                                        content: Image.asset(
                                            'assets/denemeResim.png'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Tamam'),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 11.0),
                                  child: Icon(
                                    Icons.announcement_outlined,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        indent: 90,
                        height: 1,
                        thickness: 1,
                        endIndent: 90,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Artefoktları ekorte edin',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: textColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '- Atriyal aktivite',
                            style: TextStyle(color: textColor),
                          ),
                          Text(
                            '- Elektromekanik ilişki artefaktı',
                            style: TextStyle(color: textColor),
                          ),
                          Text(
                            '- Filtering issues',
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  height: conLow2,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.pink,
                        Colors.blueAccent,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 6, color: color2, spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              value2 = !value2;
                              if (value2 == true) {
                                conLow2 = 50;
                                color2 = Colors.black;
                                textColor2 = Colors.transparent;
                                iconColor2 = Colors.transparent;
                                universalHeight -= 200;
                              } else {
                                conLow2 = 270;
                                color2 = Colors.white;
                                textColor2 = Colors.black;
                                iconColor2 = Colors.blue;
                                universalHeight += 200;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Adım 2 ▼',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.cyan),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(
                                    () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Text('Başlık'),
                                        content: Text('Açıklama'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Tamam'),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 11.0),
                                  child: Icon(
                                    Icons.announcement_outlined,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Divider(
                          indent: 90,
                          height: 1,
                          thickness: 1,
                          endIndent: 90,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0, left: 40),
                        child: Text(
                          'Depolarizasyon anormalliklerine ikincil STY`yi ekarte edin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: textColor2),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '- Sol dal bloğu',
                        style: TextStyle(color: textColor2),
                      ),
                      Text(
                        '- Pil ritmi',
                        style: TextStyle(color: textColor2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                decoration: BoxDecoration(
                                  color: iconColor2,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.build,
                                    size: 15,
                                    color: textColor2,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Aşırı zıp yönlülük (ST/S>1/4)',
                              style: TextStyle(color: textColor2),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '- Sol dal bloğu',
                        style: TextStyle(color: textColor2),
                      ),
                      Text(
                        '- WPW',
                        style: TextStyle(color: textColor2),
                      ),
                      Text(
                        '- Hiperkalemi',
                        style: TextStyle(color: textColor2),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  height: conLow3,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.pink,
                        Colors.blueAccent,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 6, color: color3, spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              value3 = !value3;
                              if (value3 == true) {
                                conLow3 = 50;
                                color3 = Colors.black;
                                textColor3 = Colors.transparent;
                                iconColor3 = Colors.transparent;
                                universalHeight -= 190;
                              } else {
                                conLow3 = 250;
                                color3 = Colors.white;
                                textColor3 = Colors.black;
                                iconColor3 = Colors.blue;
                                universalHeight += 200;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Adım 3 ▼',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.cyan),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(
                                    () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Text('Başlık'),
                                        content: Text('Açıklama'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Tamam'),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 11.0),
                                  child: Icon(
                                    Icons.announcement_outlined,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Divider(
                          indent: 90,
                          height: 1,
                          thickness: 1,
                          endIndent: 90,
                        ),
                      ),
                      Text(
                        'Diğer ikinci STY nedenlerini ekarte edin',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: textColor3),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '- SV hipertrofisi',
                        style: TextStyle(color: textColor3),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                decoration: BoxDecoration(
                                  color: iconColor3,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.build,
                                    size: 15,
                                    color: textColor3,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'OME için ST/S ≥ 1/6 aracını kullanın',
                              style: TextStyle(color: textColor3),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '- ME sonrası kalıcı STY',
                        style: TextStyle(color: textColor3),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                decoration: BoxDecoration(
                                  color: iconColor3,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.build,
                                    size: 15,
                                    color: textColor3,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'OME için T/QRS ≥ 1/3 aracını kullanın',
                              style: TextStyle(color: textColor3),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  height: conLow4,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.pink,
                        Colors.blueAccent,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 6, color: color4, spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              value4 = !value4;
                              if (value4 == true) {
                                conLow4 = 50;
                                color4 = Colors.black;
                                textColor4 = Colors.transparent;
                                iconColor4 = Colors.transparent;
                                universalHeight -= 240;
                              } else {
                                conLow4 = 270;
                                color4 = Colors.white;
                                textColor4 = Colors.black;
                                iconColor4 = Colors.blue;
                                universalHeight += 240;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Adım 4 ▼',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.cyan),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(
                                    () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Text('Başlık'),
                                        content: Text('Açıklama'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Tamam'),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 11.0),
                                  child: Icon(
                                    Icons.announcement_outlined,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Divider(
                          indent: 90,
                          height: 1,
                          thickness: 1,
                          endIndent: 90,
                        ),
                      ),
                      Text(
                        'Diğer birincil STY nedenlerini ekarte edin',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: textColor4),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '- Perikardit',
                        style: TextStyle(color: textColor4),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                decoration: BoxDecoration(
                                  color: iconColor4,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(Icons.build,
                                      size: 15, color: textColor4),
                                ),
                              ),
                            ),
                            Text(
                              'aVL`de STÇ QRS sonu bozulması',
                              style: TextStyle(color: textColor4),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '- Erken repolarizasyon',
                        style: TextStyle(color: textColor4),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                decoration: BoxDecoration(
                                  color: iconColor4,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.build,
                                    size: 15,
                                    color: textColor4,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'aVL`de STÇ QRS sonu bozulması',
                              style: TextStyle(color: textColor4),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '- Diğerleri',
                        style: TextStyle(color: textColor4),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  height: conLow5,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.pink,
                        Colors.blueAccent,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 6, color: color5, spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              value5 = !value5;
                              if (value5 == true) {
                                conLow5 = 50;
                                color5 = Colors.black;
                                textColor5 = Colors.transparent;
                                universalHeight -= 110;
                              } else {
                                conLow5 = 150;
                                color5 = Colors.white;
                                textColor5 = Colors.black;
                                universalHeight += 110;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Adım 5 ▼',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.cyan),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(
                                    () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Text('Başlık'),
                                        content: Text('Açıklama'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Tamam'),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 11.0),
                                  child: Icon(
                                    Icons.announcement_outlined,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Divider(
                          indent: 90,
                          height: 1,
                          thickness: 1,
                          endIndent: 90,
                        ),
                      ),
                      Text(
                        'STY var ancak negatif Y dalgaları ile birlikte',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: textColor5),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '- Subakut ME',
                        style: TextStyle(color: textColor5),
                      ),
                      Text(
                        '- Wellens deseni',
                        style: TextStyle(color: textColor5),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Divider(
                  height: 1,
                  color: Colors.black38,
                  endIndent: 20,
                  indent: 20,
                  thickness: 2,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Belirgin STY yoksa',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: const Divider(
                  color: Colors.black,
                  thickness: 2,
                  height: 1,
                  indent: 100,
                  endIndent: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  height: conLow6,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.pink,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 6, color: color6, spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              value6 = !value6;
                              if (value6 == true) {
                                conLow6 = 50;
                                color6 = Colors.black;
                                textColor6 = Colors.transparent;
                                universalHeight -= 140;
                              } else {
                                conLow6 = 180;
                                color6 = Colors.white;
                                textColor6 = Colors.black;
                                universalHeight += 150;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Adım 6 ▼',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.cyan),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(
                                    () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Text('Başlık'),
                                        content: Text('Açıklama'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Tamam'),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 11.0),
                                  child: Icon(
                                    Icons.announcement_outlined,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Divider(
                          indent: 90,
                          height: 1,
                          thickness: 1,
                          endIndent: 90,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, left: 40),
                            child: Text(
                              'Sadece bir derivasyonda STY yapan özgün desenleri arayın',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor6),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '- Aslanger Deseni',
                            style: TextStyle(color: textColor6),
                          ),
                          Text(
                            '- Güney Afrika bayrağı deseni',
                            style: TextStyle(color: textColor6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  height: conLow7,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blueAccent,
                        Colors.pink,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 6, color: color7, spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              value7 = !value7;
                              if (value7 == true) {
                                conLow7 = 50;
                                color7 = Colors.black;
                                textColor7 = Colors.transparent;
                                iconColor7 = Colors.transparent;
                                universalHeight -= 180;
                              } else {
                                conLow7 = 200;
                                color7 = Colors.white;
                                textColor7 = Colors.black;
                                iconColor7 = Colors.blue;
                                universalHeight += 180;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Adım 7 ▼',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.cyan),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(
                                    () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Text('Başlık'),
                                        content: Text('Açıklama'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Tamam'),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 11.0),
                                  child: Icon(
                                    Icons.announcement_outlined,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Divider(
                          indent: 90,
                          height: 1,
                          thickness: 1,
                          endIndent: 90,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0, left: 40),
                        child: Text(
                          'Silik STY açısından EGK`yi dikkatlice inceleyin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: textColor7),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '- Minimal resiprokal değişiklikler',
                        style: TextStyle(color: textColor7),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => yedinciSoruTest(),
                                  ),
                                );
                              },
                              icon: Container(
                                decoration: BoxDecoration(
                                  color: iconColor7,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.build,
                                    size: 15,
                                    color: textColor7,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Karşıt derivasyon gruplarını inceleyin.\n BV-STY ile OME`yi ayırt eden.',
                              style: TextStyle(color: textColor7),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  height: conLow8,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.pink,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 6, color: color8, spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              value8 = !value8;
                              if (value8 == true) {
                                conLow8 = 50;
                                color8 = Colors.black;
                                textColor8 = Colors.transparent;
                                universalHeight -= 100;
                              } else {
                                conLow8 = 160;
                                color8 = Colors.white;
                                textColor8 = Colors.black;
                                universalHeight += 100;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Adım 8 ▼',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.cyan),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(
                                    () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Text('Başlık'),
                                        content: Text('Açıklama'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Tamam'),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 11.0),
                                  child: Icon(
                                    Icons.announcement_outlined,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Divider(
                          indent: 90,
                          height: 1,
                          thickness: 1,
                          endIndent: 90,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, left: 40),
                            child: Text(
                              'Kesinlikle STY yoksa STÇ`ye bakın',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor8),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '- " Posteriyor " ME ',
                            style: TextStyle(color: textColor8),
                          ),
                          Text(
                            '- De Winter deseni',
                            style: TextStyle(color: textColor8),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  height: conLow9,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.pink,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 6, color: color9, spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              value9 = !value9;
                              if (value9 == true) {
                                conLow9 = 50;
                                color9 = Colors.black;
                                textColor9 = Colors.transparent;
                                universalHeight -= 50;
                              } else {
                                conLow9 = 130;
                                color9 = Colors.white;
                                textColor9 = Colors.black;
                                universalHeight += 50;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Adım 9 ▼',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.cyan),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(
                                    () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Text('Başlık'),
                                        content: Text('Açıklama'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Tamam'),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 11.0),
                                  child: Icon(
                                    Icons.announcement_outlined,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Divider(
                          indent: 90,
                          height: 1,
                          thickness: 1,
                          endIndent: 90,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, left: 40),
                            child: Text(
                              'Hiperakut T dalgalarını arayın',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor9),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '- " İri " T dalgaları',
                            style: TextStyle(color: textColor9),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  height: conLow10,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.pink,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 6, color: color10, spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              value10 = !value10;
                              if (value10 == true) {
                                conLow10 = 50;
                                color10 = Colors.black;
                                textColor10 = Colors.transparent;
                                universalHeight -= 160;
                              } else {
                                conLow10 = 180;
                                color10 = Colors.white;
                                textColor10 = Colors.black;
                                universalHeight += 160;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Adım 10 ▼',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.cyan),
                                ),
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(
                                    () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Text('Başlık'),
                                        content: Text('Açıklama'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Tamam'),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 11.0),
                                  child: Icon(
                                    Icons.announcement_outlined,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Divider(
                          indent: 90,
                          height: 1,
                          thickness: 1,
                          endIndent: 90,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, left: 40),
                            child: Text(
                              'Herşeyi kontrol edin',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor10),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '- EKG kalitesi',
                            style: TextStyle(color: textColor10),
                          ),
                          Text(
                            '- Seri EKG`ler',
                            style: TextStyle(color: textColor10),
                          ),
                          Text(
                            '- Seri biyobelirteçler',
                            style: TextStyle(color: textColor10),
                          ),
                          Text(
                            '- Eko,kBTA,KAG',
                            style: TextStyle(color: textColor10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
