import 'package:flutter/material.dart';

class Gunes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Text(
              "Tarihdeki Türk Devletleri",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Büyük Hun İmparatorluğu  MÖ 220- MS 216 ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Batı Hun İmparatorluğu MÖ 48-MS 216 ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Avrupa Hun İmparatorluğu MS 375-469",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Ak Hun İmparatorluğu 420-552",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Göktürk Devleti 552-745",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: new GestureDetector(
                      child: Text(
                        "Avar Kağanlığı  565-835 ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      onTapDown: (e) {
                        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                            content: new Text(
                                e.toString() + ' onTapDown tetiklendi')));
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: new GestureDetector(
                      child: Text(
                        "Hazar Kağanlığı  651-983 ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),onTapUp: (e) {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text(
                              e.toString() + ' Bastınız')));
                    },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Uygur Kağanlığı 98 yıl  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Karahanlı Devleti 840 - 1212  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Gazneliler 963 - 1186  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Büyük Selçuklu Devleti 1040-1157",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Harezmşahlar Devleti 1097-1231 ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Altın Orda Devleti Türk-Moğol Devleti olarak 266 yıl",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Timur İmparatorluğu 1368-1501",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Babür İmparatorluğu 332 yıl ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Osmanlı İmparatorluğu 600 yıl",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "     ",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
