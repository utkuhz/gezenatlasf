import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//void main() => runApp(SinavBaslangic());

class SinavBaslangic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SinavBaslangicState();
  }
}

class _SinavBaslangicState extends State<SinavBaslangic> {
  final _questions = const [
    {
      'questionText': '1-) Türkiye \'nin en yüksek dağı hangi dağdır?',
      'answers': [
        {'text': 'Uludağ', 'score': -2},
        {'text': 'Erciyes Dağı', 'score': -2},
        {'text': 'Büyük Ağrı Dağı', 'score': 10},
        {'text': 'Süphan Dağı', 'score': -2},
      ],
    },
    {
      'questionText': '2-) Hangisi Osmanlı İmparatorluğuna başkentlik yapmıştır?',
      'answers': [
        {'text': 'Bursa', 'score': -2},
        {'text': 'Konya', 'score': -2},
        {'text': 'Edirne', 'score': -2},
        {
          'text':
              'İstanbul',
          'score': 10
        },
      ],
    },
    {
      'questionText': ' Türkiye kaç bölgeden oluşur',
      'answers': [
        {'text': '6', 'score': -2},
        {'text': '7', 'score': 10},
        {'text': '9', 'score': -2},
        {'text': '8', 'score': -2},
      ],
    },
    {
      'questionText': 'Konya plaka kodu',
      'answers': [
        {'text': '42', 'score': 10},
        {'text': '41', 'score': -2},
        {'text': '24', 'score': -2},
        {'text': '43', 'score': -2},
      ],
    },
    {
      'questionText':
          'Konya ili Marmara Bölgesindedir?',
      'answers': [
        {
          'text': 'Evet',
          'score': -2,
        },
        {'text': 'Hayır', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sınav Sayfası'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ) //Quiz
            : Result(_totalScore, _resetQuiz),
      ), //Padding
      // debugShowCheckedModeBanner: false,
    ); //Scaffold

    //MaterialApp
  }
}
