import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kardiyoloji/STY/values.dart';

class yedinciSoruTest extends StatelessWidget {
  const yedinciSoruTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(child: yedinSoruTestExtends()),
        ),
      ),
    );
  }
}

class yedinSoruTestExtends extends StatefulWidget {
  const yedinSoruTestExtends({Key? key}) : super(key: key);

  @override
  _yedinSoruTestExtendsState createState() => _yedinSoruTestExtendsState();
}

class _yedinSoruTestExtendsState extends State<yedinSoruTestExtends> {
  @override
  late TextEditingController textController;
  late TextEditingController textController1;
  late TextEditingController textController2;
  late TextEditingController textController3;
  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  void dispose() {
    textController.dispose();
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Örnek Başlık Test',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Bazett-corrected QT interval',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                IconButton(
                  onPressed: () {
                    setState(
                      () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('Örnek Başlık'),
                          elevation: 2,
                          content: Text(
                              'Bu değer istendiği takdirde hesaba katılmadan sonuç alabilmek için 0 yazınız.\nDeğer Milisaniye cinsindendir.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Tamam'),
                              child: Text('Tamam'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: Icon(Icons.announcement),
                  iconSize: 15,
                )
              ],
            ),
          ),
          Container(
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 15)
                ],
              ),
              child: TextField(
                  controller: textController,
                  textAlignVertical: TextAlignVertical.bottom,
                  maxLength: 3,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Değer girilmeyecekse 0 yazınız',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  cursorColor: Colors.black,
                  onChanged: (value) {
                    setState(
                      () {
                        controller:
                        textController;
                        print(
                          int.parse(textController.text),
                        );
                        if (int.parse(textController.text) > 199 &&
                            int.parse(textController.text) < 751) {
                          vls = double.parse(textController.text);
                        } else {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.red,
                              content: Row(
                                children: const [
                                  Icon(Icons.info_outline),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                        'Değer girmek ISTERSENIZ 200 ile 750 arası ms değeri girin.'),
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                      },
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Text(
                  'QRS amplitude in lead V2',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                IconButton(
                  onPressed: () {
                    setState(
                      () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('Örnek Başlık'),
                          elevation: 2,
                          content:
                              Text('Bu değer zorunludur. \nmm cinsindendir..'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Tamam'),
                              child: Text('Tamam'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: Icon(Icons.announcement),
                  iconSize: 15,
                )
              ],
            ),
          ),
          Container(
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 15)
                ],
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                maxLength: 5,
                textAlign: TextAlign.center,
                decoration: InputDecoration(),
                controller: textController1,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                cursorColor: Colors.black,
                onChanged: (value) {
                  setState(
                    () {
                      controller:
                      textController1;
                      print(
                        int.parse(textController1.text),
                      );
                      if (int.parse(textController1.text) > 0 &&
                          int.parse(textController1.text) < 10001) {
                        vls1 = double.parse(textController1.text);
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
                                      '1 ile 10001 arası mm değeri geçerlidir.'),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Text(
                  'R wave amplitude in lead V4',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                IconButton(
                  onPressed: () {
                    setState(
                      () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('Örnek Başlık'),
                          elevation: 2,
                          content:
                              Text('Bu değer zorunludur. \nmm cinsindendir..'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Tamam'),
                              child: Text('Tamam'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: Icon(Icons.announcement),
                  iconSize: 15,
                )
              ],
            ),
          ),
          Container(
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 15)
                ],
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                maxLength: 5,
                textAlign: TextAlign.center,
                decoration: InputDecoration(),
                controller: textController2,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                cursorColor: Colors.black,
                onChanged: (value) {
                  setState(
                    () {
                      controller:
                      textController2;
                      print(
                        int.parse(textController2.text),
                      );
                      if (int.parse(textController2.text) > 0 &&
                          int.parse(textController2.text) < 10001) {
                        vls2 = double.parse(textController2.text);
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
                                      '0 ile 10001 arası mm değeri geçerlidir.'),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Text(
                  'ST segment elevation 60 ms \nafter the J point in lead V3',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                IconButton(
                  onPressed: () {
                    setState(
                      () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('Örnek Başlık'),
                          elevation: 2,
                          content:
                              Text('Bu değer zorunludur. \nmm cinsindendir..'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Tamam'),
                              child: Text('Tamam'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: Icon(Icons.announcement),
                  iconSize: 15,
                )
              ],
            ),
          ),
          Container(
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 15)
                ],
              ),
              child: TextField(
                controller: textController3,
                textAlignVertical: TextAlignVertical.bottom,
                maxLength: 5,
                textAlign: TextAlign.center,
                decoration: InputDecoration(),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                cursorColor: Colors.black,
                onChanged: (value) {
                  print(
                    int.parse(textController3.text),
                  );
                  if (int.parse(textController3.text) > 0 &&
                      int.parse(textController3.text) < 10001) {
                    vls3 = double.parse(textController3.text);
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
                                  '0 ile 10001 arası mm değeri geçerlidir.'),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 250,
            height: 50,
            child: RaisedButton(
              child: const Text(
                'Sonucu Gör',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                setState(
                  () {
                    int b = int.parse(textController.text);
                    if (b >= 200 && b <= 750) {
                      sonuc = (0.052 * vls) -
                          (0.151 * vls1) -
                          (0.268 * vls2) +
                          (1.062 * vls3);
                      print(vls3);
                      if (sonuc > 18.1) {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            action: SnackBarAction(
                                label: 'Kapat', onPressed: () {}),
                            duration: Duration(seconds: 15),
                            backgroundColor: Colors.green,
                            content: Row(
                              children: [
                                Icon(Icons.announcement),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    'Puan: $sonuc' + '\n' + list1[1],
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else if (sonuc < 18.2) {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            action: SnackBarAction(
                                label: 'Kapat', onPressed: () {}),
                            duration: Duration(seconds: 15),
                            backgroundColor: Colors.green,
                            content: Row(
                              children: [
                                Icon(Icons.announcement),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    'Puan: $sonuc' + '\n' + list1[0],
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    } else if (b == 0) {
                      sonuc = (0.151 * vls1) - (0.268 * vls2) + 1.062 * vls3;
                      if (sonuc > 18.1) {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            action: SnackBarAction(
                                label: 'Kapat', onPressed: () {}),
                            duration: Duration(seconds: 15),
                            backgroundColor: Colors.green,
                            content: Row(
                              children: [
                                Icon(Icons.announcement),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    'Puan: $sonuc' + '\n' + list1[1],
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else if (sonuc < 18.2) {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            action: SnackBarAction(
                                label: 'Kapat', onPressed: () {}),
                            duration: Duration(seconds: 15),
                            backgroundColor: Colors.green,
                            content: Row(
                              children: [
                                Icon(Icons.announcement),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    'Puan: $sonuc' + '\n' + list1[0],
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    }
                  },
                );
              },
              color: Colors.indigo,
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
