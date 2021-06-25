import 'package:flutter/material.dart';

class AssetShow extends StatefulWidget {
  @override
  _AssetShowState createState() => _AssetShowState();
}

class _AssetShowState extends State<AssetShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Asset Örneği')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Deneme'),
            Image(image: AssetImage('assets/images/izmir.jpg')),
            Image(image: AssetImage('assets/images/galata.jpg')),
            Image(image: AssetImage('assets/images/harita.jpg')),
            Image(image: AssetImage('assets/images/konya.jpg')),
            Image(image: AssetImage('assets/images/yol.jpg')),
            Image(image: AssetImage('assets/images/dunyaharita.jpg')),
          ],
        ),
      ),
    );
  }
}
