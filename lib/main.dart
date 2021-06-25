import 'package:flutter/material.dart';
import 'dart:async';
import 'package:gezenatlas/giris/ana_sayfa.dart';
import 'package:gezenatlas/giris/merkez.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:sqflite/sqflite.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(AnaUygulama());
}

class AnaUygulama extends StatefulWidget {
  @override
  _AnaUygulamaState createState() => _AnaUygulamaState();
}

class _AnaUygulamaState extends State<AnaUygulama> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Merkez(),
    );
  }
}
