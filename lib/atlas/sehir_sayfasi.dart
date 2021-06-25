import 'package:flutter/material.dart';
import 'package:gezenatlas/atlas/sehir.dart';

class SehirSayfasi extends StatelessWidget {
  List<Sehir> _sehirler = [
    Sehir("İstanbul", 34, 160000000),
    Sehir("Ankara", 06, 5000000),
    Sehir("İzmir", 35, 4500000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Şehir Sayfası "),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: _sehirler.length,
          itemBuilder: _listeOgesiOlustur,
        ),
      ),
    );
  }

  Widget _listeOgesiOlustur(BuildContext context, int index) {
    return Card(
      child: ListTile(
        title: Text(_sehirler[index].isim),
        subtitle: Text(_sehirler[index].nufus.toString()),
        trailing: Text(_sehirler[index].plakaKodu.toString()),
        leading: Icon(Icons.location_city),
      ),
      elevation: 4,
    );
  }
}
