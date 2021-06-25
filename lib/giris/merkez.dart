import 'package:flutter/material.dart';
import 'package:gezenatlas/atlas/bilgi.dart';
import 'package:gezenatlas/dosyaislemleri/ana_dosya.dart';
import 'package:gezenatlas/hakkinda.dart';
import 'package:gezenatlas/sinav/sinav_baslangic.dart';


class Merkez extends StatefulWidget {
  @override
  _MerkezState createState() => _MerkezState();
}

class _MerkezState extends State<Merkez> {
  List<Widget> _sayfalar = [
    Bilgi(),
    SinavBaslangic(),
    Dosya(),
  ];
  int _seciliSayfaIndeksi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text("Ana Sayfa"),
    );
  }

  Widget _buildBody() {
    return _sayfalar[_seciliSayfaIndeksi];
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.web),
          label: 'Bilgi',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.notes),
          label: 'Sınav',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_download),
          label: 'Dosya İşlemleri',
        ),
      ],
      currentIndex: _seciliSayfaIndeksi,
      onTap: _sayfaDegistir,
      elevation: 20,
      backgroundColor: Colors.grey,
      selectedItemColor: Colors.grey[900],
      unselectedItemColor: Colors.grey,
      iconSize: 24,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedFontSize: 16,
      unselectedFontSize: 12,
      type: BottomNavigationBarType.shifting,
    );
  }




  void _sayfaDegistir(int yeniIndeks) {
    setState(() {
      _seciliSayfaIndeksi = yeniIndeks;
    });
  }
}
