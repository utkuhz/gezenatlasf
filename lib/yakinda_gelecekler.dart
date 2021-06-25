import 'package:flutter/material.dart';

class Yakinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uygulamaya yakında gelecekler"),
      ),
      body: Container(
        width: 600,
        height: 600,
        color: Colors.grey,
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        padding: EdgeInsets.all(50),
        child: Text(
            "*Coğrafya bilginizi sınayabileceğiniz sınav sayfası.\n"
            "*Dünya hakkında daha çok bilgi.\n"
            "*Favoriler Sayfası.\n"
            "*Çok daha iyi bir uygulama.",
            style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
