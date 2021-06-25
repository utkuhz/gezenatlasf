import 'package:flutter/material.dart';
import 'package:gezenatlas/giris/giris_sayfasi.dart';
import 'package:gezenatlas/giris/karsilama_sayfasi.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _veriOku(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("aAna Sayf"),
      ),
      body: Center(
        child: Text(
          "Flutter",
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ),
    );
  }


  _veriOku(BuildContext context) async {
    SharedPreferences prefs = await
    SharedPreferences.getInstance();
    String kullaniciAdi = prefs.getString("kullaniciAdi");
    if (kullaniciAdi == null) {
      _girisSayfasiniAc(context);
    }
    else {
      _karsilamaSayfasiniAc(context, kullaniciAdi);
    }
  }

  _girisSayfasiniAc(BuildContext context) {
    _sayfaAc(context, GirisSayfasi());
  }

  _karsilamaSayfasiniAc(BuildContext context, String kullaniciAdi) {
    _sayfaAc(context, KarsilamaSayfasi(kullaniciAdi));
  }

  _sayfaAc(BuildContext context, Widget sayfa) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      MaterialPageRoute sayfaYolu = MaterialPageRoute(
        builder: (BuildContext contex) {
          return sayfa;
        },);
      Navigator.pushReplacement(context, sayfaYolu);
    });
  }
}