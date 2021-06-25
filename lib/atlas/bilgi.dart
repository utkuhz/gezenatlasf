import 'package:flutter/material.dart';
import 'package:gezenatlas/atlas/bolgeler.dart';
import 'package:gezenatlas/atlas/gunes.dart';
import 'package:gezenatlas/atlas/kur_donusum.dart';
import 'package:gezenatlas/hakkinda.dart';
import 'package:gezenatlas/atlas/kitalar_sayfasi.dart';
import 'package:gezenatlas/atlas/okyanus.dart';
import 'package:gezenatlas/atlas/iller.dart';
import 'package:gezenatlas/atlas/ulke_sayfasi.dart';
import 'package:gezenatlas/veritabani/yer.dart';
import 'package:gezenatlas/yakinda_gelecekler.dart';
import 'package:gezenatlas/atlas/yedi_harika.dart';

class Bilgi extends StatefulWidget {
  @override
  _BilgiState createState() => _BilgiState();
}

class _BilgiState extends State<Bilgi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(context),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text("Bilgi Sayfası"),
      backgroundColor: Colors.indigo,
    );
  }

  Widget _buildBody() {
    return Center(
      child: Text(
        "Uygulama Bilgi Sayfası",
        style: TextStyle(fontSize: 36),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: FlutterLogo(),
            accountName: Text("Flutter"),
            accountEmail: Text("https://flutter.dev"),
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
          ),
          ListTile(
            title: Text('Kıtalar'),
            subtitle: Text("Dünya' daki Kıtalar"),
            leading: Icon(Icons.circle),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              _kitaSayfasiniAc(context);
            },
            /* onLongPress: () {
              _kitaSayfasiniAc(context);
            },
            leading: Icon(Icons.circle),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            },*/
          ),
          ListTile(
            title: Text('16 Büyük Türk Devleti'),
            subtitle: Text(""),
            /* onLongPress: () {
              _gunesSayfasiniAc(context);
            },*/
            leading: Icon(Icons.flag),
            trailing: Icon(Icons.wb_sunny),
            onTap: () {
              _gunesSayfasiniAc(context);
            },
          ),
          ListTile(
            title: Text('Ülke Sayfasi'),
            subtitle: Text("Ülkeleri Gorun"),
            /* onLongPress: () {
              _ulkeSayfasiniAc(context);
            },*/
            leading: Icon(Icons.flag),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              _ulkeSayfasiniAc(context);
            },
          ),
          ListTile(
            title: Text('Ülke Kurlar'),
            subtitle: Text("Kur dönüşümü"),
            /* onLongPress: () {
              _ulkeSayfasiniAc(context);
            },*/
            leading: Icon(Icons.flag),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              _kurSayfasiniAc(context);
            },
          ),
          ListTile(
            title: Text('7 Harika'),
            subtitle: Text("  "),
            /*onLongPress: () {
              _harikaSayfasiniAc(context);
            },*/
            leading: Icon(Icons.star),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              _harikaSayfasiniAc(context);
            },
          ),
          ListTile(
            title: Text('Okyanus Sayfasi'),
            subtitle: Text("Okyanus Gorun"),
            /*onLongPress: () {
              _okyanusSayfasiniAc(context);
            },*/
            leading: Icon(Icons.waterfall_chart),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              _okyanusSayfasiniAc(context);
            },
          ),
          ListTile(
            title: Text("Türkiye' deki Bölgeler"),
            subtitle: Text("BölgeleriGörün "),
            /*onLongPress: () {
              _bolgeSayfasiniAc(context);
            },*/
            leading: Icon(Icons.nature),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              _bolgeSayfasiniAc(context);
            },
          ),
          ListTile(
            title: Text("Türkiye' deki Şehirler"),
            subtitle: Text("Sehirleri Gorun "),
            /*  onLongPress: () {
              _sehirSayfasiniAc(context);
            },*/
            leading: Icon(Icons.location_city),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              _illerSayfasiniAc(context);
            },
          ),
          ListTile(
            title: Text('Hakknda Sayfası'),
            subtitle: Text("Uygulamanın Hakkında Sayfası"),
            /*onLongPress: () {
              _hakkindaSayfasiniAc(context);
            },*/
            leading: Icon(Icons.book),
            trailing: Icon(Icons.control_point_sharp),
            onTap: () {
              _hakkindaSayfasiniAc(context);
            },
          ),
          ListTile(
            title: Text('gidilicek yerler'),
            subtitle: Text("örnek"),
            /*onLongPress: () {
              _hakkindaSayfasiniAc(context);
            },*/
            leading: Icon(Icons.book),
            trailing: Icon(Icons.control_point_sharp),
            onTap: () {
              _yerSayfasiniAc(context);
            },
          ),
          ListTile(
            title: Text('Yakında Gelecekler'),
            subtitle: Text("Uygulamaya yakında gelecekler"),
            /* onLongPress: () {
              _yakindaSayfasiniAc(context);
            },*/
            leading: Icon(Icons.book),
            trailing: Icon(Icons.control_point_sharp),
            onTap: () {
              _yakindaSayfasiniAc(context);
            },
          ),
        ],
      ),
    );
  }

  _bolgeSayfasiniAc(BuildContext context) {
    MaterialPageRoute bolgeSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Bolgeler();
      },
    );

    Navigator.push(context, bolgeSayfaYolu);
  }

  _illerSayfasiniAc(BuildContext context) {
    MaterialPageRoute illerSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Iller();
      },
    );

    Navigator.push(context, illerSayfaYolu);
  }

  _gunesSayfasiniAc(BuildContext context) {
    MaterialPageRoute gunesSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Gunes();
      },
    );

    Navigator.push(context, gunesSayfaYolu);
  }

  _ulkeSayfasiniAc(BuildContext context) {
    MaterialPageRoute ulkeSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return UlkeSayfa();
      },
    );

    Navigator.push(context, ulkeSayfaYolu);
  }

  _kurSayfasiniAc(BuildContext context) {
    MaterialPageRoute kurSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return KurSayfa();
      },
    );

    Navigator.push(context, kurSayfaYolu);
  }

  _harikaSayfasiniAc(BuildContext context) {
    MaterialPageRoute harikaSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return YediHarika();
      },
    );

    Navigator.push(context, harikaSayfaYolu);
  }

  _okyanusSayfasiniAc(BuildContext context) {
    MaterialPageRoute okyanusSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Okyanus();
      },
    );

    Navigator.push(context, okyanusSayfaYolu);
  }

  _kitaSayfasiniAc(BuildContext context) {
    MaterialPageRoute kitaSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Kitalar();
      },
    );

    Navigator.push(context, kitaSayfaYolu);
  }

  _yakindaSayfasiniAc(BuildContext context) {
    MaterialPageRoute yakindaSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Yakinda();
      },
    );

    Navigator.push(context, yakindaSayfaYolu);
  }
  _yerSayfasiniAc(BuildContext context) {
    MaterialPageRoute yerSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return YerSayfasi();
      },
    );

    Navigator.push(context, yerSayfaYolu);
  }

  _hakkindaSayfasiniAc(BuildContext context) {
    MaterialPageRoute hakkindaSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Hakkinda();
      },
    );

    Navigator.push(context, hakkindaSayfaYolu);
  }
}
