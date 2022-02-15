import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kardiyoloji/Semptomlar/testCozum.dart';

class testUyari extends StatelessWidget {
  const testUyari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffD5D5D5),
        body: SafeArea(
          child: arayuz(),
        ),
      ),
    );
  }
}

class arayuz extends StatelessWidget {
  const arayuz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 300,
          width: 350,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                'Genel Test',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 150,
                width: 300,
                child: Center(
                  child: Text(
                    'Testte yazılmış olan cümlelerden\n      sizden görülenlerde `EVET`\n görülmeyenlerde `HAYIR`ı seçin.\nSeçiminizi yapmadan önce cümleyi\n              dikkatle okuyunuz\n          ve her soruyu yanıtlayın. ',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.transparent,
                ),
                height: 60,
                width: 60,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => testCozum(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.check_sharp,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
