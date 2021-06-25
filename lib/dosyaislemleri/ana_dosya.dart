 import 'package:flutter/material.dart';
import 'package:gezenatlas/dosyaislemleri//asset_show.dart';
import 'package:gezenatlas/dosyaislemleri//file_download_view.dart';
import 'package:gezenatlas/dosyaislemleri//file_operations.dart';
import 'package:gezenatlas/dosyaislemleri/resim.dart';


class Dosya extends StatefulWidget {
  Dosya({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DosyaState createState() => _DosyaState();
}

class _DosyaState extends State<Dosya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //  title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FileOperationsScreen()));
                },
                child: Text("Dosyaya Yazma ve Okuma İşlemleri")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FileDownloadView()));
                },
                child: Text("PDF ve MP4 indirme ve gösterme")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AssetShow()));
                },
                child: Text("Assets Örneği")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Resim()));
                },
                child: Text("Resim")),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
