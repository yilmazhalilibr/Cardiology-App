import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kardiyoloji/anaSayfa.dart';
import 'package:kardiyoloji/genelTest/value.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'STY/values.dart';

class ayarlar extends StatelessWidget {
  ayarlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Ayarlar'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => anaSayfa(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back),
            )
          ],
        ),
        body: SafeArea(
          child: ayarlarExtends(),
        ),
      ),
    );
  }
}

class ayarlarExtends extends StatefulWidget {
  const ayarlarExtends({Key? key}) : super(key: key);

  @override
  _ayarlarExtendsState createState() => _ayarlarExtendsState();
}

class _ayarlarExtendsState extends State<ayarlarExtends> {
  @override
  void pref(var xs) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('valueSettingx', xs);
  }

  oku() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? valueSettings = prefs.getString("valueSettingx");
    print(valueSettings);
  }

  String? dropdownValue;
  String? dropdownValue2;

  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 60.0),
          child: Text(
            'Seçim',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: MyDropdownButtton(),
        ),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 60.0),
          child: Text(
            'Dil Seçeneği',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: MyDropdownButtton2(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 60),
          child: Container(
            width: 200,
            height: 70,
            child: RaisedButton(
              child: const Text(
                'Kaydet',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => anaSayfa(),
                  ),
                );
              },
              color: Colors.indigo,
            ),
          ),
        ),
      ],
    );
  }

  DropdownButton<String> MyDropdownButtton() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward, color: Colors.deepPurpleAccent),
      elevation: 16,
      style: TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.purple,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
          valueSettings = newValue;
          pref(newValue);
          oku();
        });
      },
      items: <String>[
        'hs-cTn T(Elecsys; Roche)',
        'hs-cTn I(Architect; Abbott)',
        'hs-cTn I(Centaur; Siemens)',
        'hs-cTn I(Access; Beckman Coulter)',
        'hs-cTn I(Clarity; Singulex)',
        'hs-cTn I(Vitros;Clinical Diagnosticks)',
        'hs-cTn I(Pathfast; LSI Medience)',
        'hs-cTn I(TriageTrue; Quidel)',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  DropdownButton<String> MyDropdownButtton2() {
    return DropdownButton<String>(
      value: dropdownValue2,
      icon: Icon(Icons.arrow_downward, color: Colors.deepPurpleAccent),
      elevation: 16,
      style: TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.purple,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue2 = newValue!;
          dil = newValue;

          print(valueSettings);
        });
      },
      items: <String>[
        'Türkçe',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
