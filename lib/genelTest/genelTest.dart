import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../STY/values.dart';

FutureOr<String?> _veriSave1() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var veri = prefs.getString('valueSettingx');
  print(veri);
  return "Tamamlandı";
}

final Future<String> _veriSave = Future<String>.value(valueSettings);

class genelTest extends StatelessWidget {
  const genelTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Genel Test'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: genelTestExtends(),
        ),
      ),
    );
  }
}

class genelTestExtends extends StatefulWidget {
  genelTestExtends({Key? key}) : super(key: key);

  @override
  _genelTestExtendsState createState() => _genelTestExtendsState();
}

class _genelTestExtendsState extends State<genelTestExtends> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller1.addListener(_printLatestValue);
    controller2.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    print('first text field: ${controller1.text}');
    print('Second text field: ${controller2.text}');
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 35.0, left: 30, bottom: 10),
          child: Text('0 ile 1 saat arası değer'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Container(
            width: 200,
            height: 80,
            child: TextField(
              controller: controller1,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Değer olmaması için 0 yazın..',
                labelStyle: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15.0, right: 50, bottom: 10),
          child: Text('Δ Değeri'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Container(
            width: 200,
            height: 80,
            child: TextField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: controller2,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Değer olmaması için 0 yazın..',
                labelStyle: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 80),
          child: Container(
            width: 250,
            height: 80,
            child: RaisedButton(
              child: const Text(
                'Sonucu Gör',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                all_calculator();
              },
              color: Colors.indigo,
            ),
          ),
        ),
      ],
    );
  }

  void all_calculator() {
    setState(
      () {
        switch (valueSettings) {
          case 'hs-cTn T(Elecsys; Roche)':
            {
              calculator(5, 12, 3, 52, 5);
            }

            break;

          case 'hs-cTn I(Architect; Abbott)':
            {
              calculator(4, 5, 2, 64, 6);
            }
            break;

          case 'hs-cTn I(Centaur; Siemens)':
            {
              calculator(3, 6, 3, 120, 12);
            }
            break;

          case 'hs-cTn I(Access; Beckman Coulter)':
            {
              calculator(4, 5, 4, 50, 15);
            }
            break;
          case 'hs-cTn I(Clarity; Singulex)':
            {
              calculator(1, 2, 1, 30, 6);
            }
            break;
          case 'hs-cTn I(Vitros;Clinical Diagnosticks)':
            {
              calculator(1, 2, 1, 40, 4);
            }
            break;
          case 'hs-cTn I(Pathfast; LSI Medience)':
            {
              calculator(3, 4, 3, 90, 20);
            }
            break;
          case 'hs-cTn I(TriageTrue; Quidel)':
            {
              calculator(4, 5, 3, 60, 8);
            }
            break;

          default:
            {
              print("Lale");
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  action: SnackBarAction(label: 'Kapat', onPressed: () {}),
                  duration: Duration(seconds: 15),
                  backgroundColor: Colors.blue,
                  content: Row(
                    children: const [
                      Icon(Icons.announcement),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          "Ayarlardan testi seçiniz..",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            break;
        }
      },
    );
  }

  void calculator(int a, int b, int c, int d, int e) {
    dynamic con = int.parse(controller1.text);
    dynamic con2 = int.parse(controller2.text);
    con < a && con > 0 || con < b && con2 < c && con2 > 0
        ? Scaffold.of(context).showSnackBar(
            SnackBar(
              action: SnackBarAction(label: 'Kapat', onPressed: () {}),
              duration: Duration(seconds: 15),
              backgroundColor: Colors.green,
              content: Row(
                children: const [
                  Icon(Icons.announcement),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      "Düşük",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          )
        : con >= d || con2 >= e
            ? Scaffold.of(context).showSnackBar(
                SnackBar(
                  action: SnackBarAction(label: 'Kapat', onPressed: () {}),
                  duration: Duration(seconds: 15),
                  backgroundColor: Colors.pink,
                  content: Row(
                    children: const [
                      Icon(Icons.announcement),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          "Yüksek",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Scaffold.of(context).showSnackBar(
                SnackBar(
                  action: SnackBarAction(label: 'Kapat', onPressed: () {}),
                  duration: Duration(seconds: 15),
                  backgroundColor: Colors.yellow,
                  content: Row(
                    children: const [
                      Icon(Icons.announcement),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          "Orta",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }
}
