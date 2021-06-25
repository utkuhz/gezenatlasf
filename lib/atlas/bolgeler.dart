import 'package:flutter/material.dart';

class Bolgeler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Türkiye' nin Bölgeleri"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,

              color: Colors.orangeAccent,
              child: Text(
                "Karadeniz Bölgesi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,

              color: Colors.lightGreenAccent,
              child: Text(
                "Marmara Bölgesi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,

              color: Colors.deepOrangeAccent,
              child: Text(
                "Ege Bölgesi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,

                  color: Colors.white,
                ),
              ),
            ),
          ),Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,

              color: Colors.purpleAccent,
              child: Text(
                "Akdeniz Bölgesi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,

              color: Colors.amberAccent,
              child: Text(
                "İç Anadolu Bölgesi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,

              color: Colors.green,
              child: Text(
                "Doğu Anadolu Bölgesi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,

              color: Colors.orange,
              child: Text(
                "Güneydoğu Anadolu Bölgesi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}