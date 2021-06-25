import 'package:flutter/material.dart';

class Okyanus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OKYANUSLAR"),
        backgroundColor: Colors.grey,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.blue[300],
              child: Text(
                "B"
                "\nÜ"
                "\nY"
                "\nÜ"
                "\nK"
                " \n"
                "\nO"
                "\nK"
                "\nY"
                "\nA"
                "\nN"
                "\nU"
                "\nS",
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
              height: double.infinity,
              width: double.infinity,
              color: Colors.blue[500],
              child: Text(
                "A\nT\nL\nA\nS\n \nO\nK\nY\nA\nN\nU\nS\nU",
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
              height: double.infinity,
              width: double.infinity,
              color: Colors.blue[700],
              child: Text(
                "H\nİ\nN\nT\n \nO\nK\nY\nA\nN\nU\nS\nU",
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
