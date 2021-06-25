import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      resultText = 'Harika!';
      print(resultScore);
    } else if (resultScore >= 31) {
      resultText = 'iyi!';
      print(resultScore);
    } else if (resultScore >= 21) {
      resultText = 'Biraz çalış!';
    } else if (resultScore >= 1) {
      resultText = 'Biraz çalış!';
    } else {
      resultText = 'kötüflf!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Score ' '$resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          FlatButton(
            child: Text(
              'Tekrar Başlat',
            ), //Text
            textColor: Colors.blue,
            onPressed: resetHandler,
          ), //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
