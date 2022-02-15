import 'package:flutter/material.dart';

import '../anaSayfa.dart';
import '../ayarlar.dart';
import '../test_Sayfasi.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({Key? key}) : super(key: key);

  @override
  _NavigationBottomState createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  int seciliSayfa = 0;
  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
      print(seciliSayfa);
    });
    sayfaGoster(seciliSayfa);
  }

  sayfaGoster(int seciliSayfa) {
    if (seciliSayfa == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => anaSayfa()),
      );
    } else if (seciliSayfa == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => testSayfasi()),
      );
    } else if (seciliSayfa == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ayarlar()),
      );
    } else if (seciliSayfa == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => anaSayfa()),
      );
      return anaSayfa();
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => anaSayfa()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: seciliSayfa,
      onTap: sayfaDegistir,
      type: BottomNavigationBarType.fixed,
      iconSize: 3,
      unselectedItemColor: Colors.black,
      fixedColor: Colors.black,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: '',
          backgroundColor: Color(0xffd21727),
          icon: Container(
            height: 50,
            width: 140,
            child: Column(
              children: const [
                Icon(
                  Icons.search,
                  color: Color(0xffd21727),
                  size: 30,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Arama',
                  style: TextStyle(
                    color: Color(0xffd21727),
                  ),
                ),
              ],
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          backgroundColor: Color(0xffd21727),
          icon: Container(
            height: 50,
            width: 140,
            child: Column(
              children: const [
                Icon(
                  Icons.calendar_today_outlined,
                  color: Color(0xffd21727),
                  size: 30,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Testler',
                  style: TextStyle(
                    color: Color(0xffd21727),
                  ),
                ),
              ],
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          backgroundColor: Color(0xffd21727),
          icon: Container(
            height: 50,
            width: 140,
            child: Column(
              children: const [
                Icon(
                  Icons.build,
                  color: Color(0xffd21727),
                  size: 30,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Ayarlar',
                  style: TextStyle(
                    color: Color(0xffd21727),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
