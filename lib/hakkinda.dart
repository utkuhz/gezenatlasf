import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkında Sayfası"),
      ),
      body: Center(
        child: Text(
            "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında"
            " 173301099 numaralı Utku Hızal tarafından 30 Nisan 2021 günü yapılmıştır.",
            style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
