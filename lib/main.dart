import 'package:flutter/material.dart';
import 'package:receitas_18_04/views/italiana.dart';
import 'package:receitas_18_04/views/brasileira.dart';
import 'package:receitas_18_04/views/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (_) => const Home(),
      '/brasileira': (_) => const Brasileira(),
      '/italiana': (_) => const Italiana()
    },
  ));
}
