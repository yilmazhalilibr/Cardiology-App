import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'atamaCevaplar.dart';

class testCozum extends StatelessWidget {
  const testCozum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {},
              child: Text('Genel Bilgiler'),
            ),
            const SizedBox(
              width: 65,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Önerilenler'),
            ),
            const SizedBox(
              width: 65,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextButton(
                onPressed: () {},
                child: Text('Referanslar'),
              ),
            ),
          ],
          backgroundColor: Colors.grey.shade300,
        ),
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: SingleChildScrollView(child: cozumKismi()),
        ),
      ),
    );
  }
}

class cozumKismi extends StatefulWidget {
  cozumKismi({Key? key}) : super(key: key);

  @override
  _cozumKismiState createState() => _cozumKismiState();
}

@override
class _cozumKismiState extends State<cozumKismi> {
  TextEditingController textEditCon = TextEditingController();

  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 200.0, top: 20),
              child: Text(
                'Genel Test',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                  shadows: <Shadow>[
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.grey,
                    ),
                    Shadow(
                      blurRadius: 8.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 30),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.red,
                              Colors.lightBlueAccent,
                            ],
                          ),
                        ),
                        height: 1100,
                        width: 350,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Column(
                      children: [
                        const Text(
                          '1. Hastanın yaşı? (1-120)  ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 70,
                          width: 300,
                          child: TextField(
                            controller: textEditCon,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            cursorColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                print(
                                  int.parse(textEditCon.text),
                                );

                                if (int.parse(textEditCon.text) > 0 &&
                                    int.parse(textEditCon.text) < 121) {
                                  yas = int.parse(textEditCon.text);
                                } else {
                                  Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Row(
                                        children: const [
                                          Icon(Icons.mood_bad),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: Text(
                                                'Uygun bir yaş aralığı girin! (1-120)'),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              });
                            },
                          ),
                        ),
                        const Text(
                          '2. Hastanın cinsiyeti?  ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru2 = true;
                                  soru21 = false;
                                  print(soru21);
                                  print(soru2);
                                  deger2 = 1;
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 2,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger2 > 0
                                          ? soru2 == true
                                              ? Colors.black
                                              : icon2
                                          : icon2,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('KADIN'),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru21 = true;
                                  soru2 = false;

                                  deger2 = 1;
                                  print(soru21);
                                  print(soru2);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 0,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger2 > 0
                                          ? soru21 == true
                                              ? Colors.black
                                              : icon2
                                          : icon2,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('ERKEK'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '3. Hastanın bilinen koroner arter hastalığı\n                     veya ≥3 risk faktörü',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 165,
                          child: Text(
                            'koroner arter hastalığını (KAH) “önceki akut miyokard enfarktüsü,\nkoroner arter baypas grefti veya perkütan müdahale” \nolarak tanımlamaktadır  \nRisk faktörleri: dislipidemi, diyabet, hipertansiyon, \nmevcut sigara içicisi, ailede erken KAH öyküsü\nRisk faktörleri sadece 18-50 arası \nhastalar için geçerlidir',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru3 = true;
                                  soru31 = false;

                                  deger3 = 1;
                                  print(soru31);
                                  print(soru3);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 2,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger3 > 0
                                          ? soru3 == true
                                              ? Colors.black
                                              : icon3
                                          : icon3,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('EVET'),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru31 = true;
                                  soru3 = false;
                                  deger3 = 1;
                                  print(soru31);
                                  print(soru3);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 0,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger3 > 0
                                          ? soru31 == true
                                              ? Colors.black
                                              : icon3
                                          : icon3,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('HAYIR'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              'Belirti ve işaretler',
                              style: TextStyle(color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              '4. Hasta terleme yaşıyor mu?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru4 = true;
                                  soru41 = false;

                                  deger4 = 1;
                                  print(soru41);
                                  print(soru4);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 2,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger4 > 0
                                          ? soru4 == true
                                              ? Colors.black
                                              : icon4
                                          : icon4,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('EVET'),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru41 = true;
                                  soru4 = false;

                                  deger4 = 1;
                                  print(soru41);
                                  print(soru4);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 0,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger4 > 0
                                          ? soru41 == true
                                              ? Colors.black
                                              : icon4
                                          : icon4,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('HAYIR'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 290,
                          height: 100,
                          child: Center(
                            child: Text(
                              '5.Hastanın kol , omuz ,boyun ve çeneye \n             yayılan bir ağrısı var mı?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru5 = true;
                                  soru51 = false;

                                  deger5 = 1;
                                  print(soru51);
                                  print(soru5);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 2,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger5 > 0
                                          ? soru5 == true
                                              ? Colors.black
                                              : icon5
                                          : icon5,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('EVET'),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru51 = true;
                                  soru5 = false;

                                  deger5 = 1;
                                  print(soru51);
                                  print(soru5);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 0,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger5 > 0
                                          ? soru51 == true
                                              ? Colors.black
                                              : icon5
                                          : icon5,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('HAYIR'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '6. Ağrı inspirasyonla ortaya çıktı\n             veya kötüleşti mi?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru6 = true;
                                  soru61 = false;

                                  deger6 = 1;
                                  print(soru61);
                                  print(soru6);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 2,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger6 > 0
                                          ? soru6 == true
                                              ? Colors.black
                                              : icon6
                                          : icon6,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('EVET'),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru61 = true;
                                  soru6 = false;

                                  deger6 = 1;
                                  print(soru61);
                                  print(soru6);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 0,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger6 > 0
                                          ? soru61 == true
                                              ? Colors.black
                                              : icon6
                                          : icon6,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('HAYIR'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '7. Ağrı palpasyonla artıyor mu?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru7 = true;
                                  soru71 = false;

                                  deger7 = 1;
                                  print(soru71);
                                  print(soru7);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 2,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger7 > 0
                                          ? soru7 == true
                                              ? Colors.black
                                              : icon7
                                          : icon7,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('EVET'),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  soru71 = true;
                                  soru7 = false;

                                  deger7 = 1;
                                  print(soru71);
                                  print(soru7);
                                });
                              },
                              icon: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: -10,
                                    left: 0.2,
                                    bottom: 0,
                                    child: Icon(
                                      Icons.check_sharp,
                                      size: 40,
                                      color: deger7 > 0
                                          ? soru71 == true
                                              ? Colors.black
                                              : icon7
                                          : icon7,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('HAYIR'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 6,
                                  spreadRadius: 1,
                                ),
                              ]),
                          width: 250,
                          height: 70,
                          child: RaisedButton(
                            child: const Text(
                              'Sonucu Gör',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  if (yas >= 18 && yas <= 45) {
                                    puan = puan + 2;
                                  } else if (yas >= 46 && yas <= 50) {
                                    puan = puan + 4;
                                  } else if (yas >= 51 && yas <= 55) {
                                    puan = puan + 6;
                                  } else if (yas >= 56 && yas <= 60) {
                                    puan = puan + 8;
                                  } else if (yas >= 61 && yas <= 65) {
                                    puan = puan + 10;
                                  } else if (yas >= 66 && yas <= 70) {
                                    puan = puan + 12;
                                  } else if (yas >= 71 && yas <= 75) {
                                    puan = puan + 14;
                                  } else if (yas >= 76 && yas <= 80) {
                                    puan = puan + 16;
                                  } else if (yas >= 81 && yas <= 85) {
                                    puan = puan + 18;
                                  } else if (yas >= 86 && yas <= 120) {
                                    puan = puan + 20;
                                  }
                                  if (soru2 == true) {
                                    puan = puan + 0;
                                  } else if (soru21 == true) {
                                    puan = puan + 6;
                                  }
                                  if (soru3 == true) {
                                    puan = puan + 4;
                                  } else if (soru31 == true) {
                                    puan = puan + 0;
                                  }
                                  if (soru4 == true) {
                                    puan = puan + 3;
                                  } else if (soru41 == true) {
                                    puan = puan + 0;
                                  }

                                  if (soru5 == true) {
                                    puan = puan + 5;
                                  } else if (soru51 == true) {
                                    puan = puan + 0;
                                  }
                                  if (soru6 == true) {
                                    puan = puan - 4;
                                  } else if (soru61 == true) {
                                    puan = puan + 0;
                                  }
                                  if (soru7 == true) {
                                    puan = puan - 6;
                                  } else if (soru71 == true) {
                                    puan = puan + 0;
                                  }

                                  print(puan);
                                  print("yukarısı");

                                  if (int.parse(textEditCon.text) > 0 &&
                                      int.parse(textEditCon.text) < 121 &&
                                      puan >= 20) {
                                    yas = int.parse(textEditCon.text);
                                    puan >= 34 ? puan = 34 : null;
                                    Scaffold.of(context).showSnackBar(
                                      SnackBar(
                                        action: SnackBarAction(
                                            label: 'Önerilenler',
                                            onPressed: () {}),
                                        duration: Duration(seconds: 15),
                                        backgroundColor: Colors.green,
                                        content: Row(
                                          children: [
                                            Icon(Icons.announcement),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Expanded(
                                              child: Text(
                                                AciklamaX[1],
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                    setState(() {
                                      puan = 0;
                                    });
                                  } else if (int.tryParse(textEditCon.text) ==
                                      null) {
                                    print('yaş');
                                    Scaffold.of(context).showSnackBar(
                                      SnackBar(
                                        backgroundColor: Colors.red,
                                        content: Row(
                                          children: const [
                                            Icon(Icons.mood_bad),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Expanded(
                                              child: Text(
                                                  'Uygun bir yaş aralığı girin! (1-120)'),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  } else if (puan < 20) {
                                    Scaffold.of(context).showSnackBar(
                                      SnackBar(
                                        action: SnackBarAction(
                                          label: 'Önerilenler',
                                          onPressed: () {},
                                        ),
                                        duration: Duration(seconds: 15),
                                        backgroundColor: Colors.green,
                                        content: Row(
                                          children: [
                                            Icon(Icons.announcement),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Expanded(
                                              child: Text(
                                                AciklamaX[0],
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                    setState(() {
                                      puan = 0;
                                    });
                                  }
                                },
                              );
                            },
                            color: Colors.indigo,
                          ),
                        ),
                      ],
                    ),
                    left: 50,
                    top: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
