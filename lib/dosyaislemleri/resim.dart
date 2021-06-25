import 'package:flutter/material.dart';

class Resim extends StatefulWidget {
  Resim({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ResimState createState() => _ResimState();
}

class _ResimState extends State<Resim> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.red,
          child: new GestureDetector(
            child: new Text('Tek tıkla'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  new SnackBar(content: new Text('Tek tıkladın')));
            },
          ),
        ),
      ),
       //Text(
         // 'Gezen Atlas',
      //  ),
        //   Image.network("https://www.selcuk.edu.tr/Tasarim/img/Selcuklogo1975.png"),
        // Image.network('https://picsum.photos/250?image=9'),
        //Image.network('https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
      ],
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
