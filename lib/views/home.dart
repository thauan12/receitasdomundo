import 'package:flutter/material.dart';
import 'package:receitas_18_04/model/receita.dart';
import 'package:receitas_18_04/modelviews/receitas.dart';
import 'package:receitas_18_04/views/widget/app_bar.dart';
import 'package:receitas_18_04/views/widget/carrosel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Receita> recentes = [receita1, receita3, receita6];
  List<Receita> populares = [receita2, receita3, receita6, receita4];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: HomeAppBar()),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Receitas Novas',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: (size.height - 50) * 0.15,
              width: size.width - 10,
              child: Carrossel(listCards: recentes),
            ),
            const SizedBox(height: 20),
            const Text(
              'Receitas Populares',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: (size.height - 50) * 0.15,
              width: size.width - 10,
              child: Carrossel(listCards: populares),
            ),
          ],
        ),
      ),
    );
  }
}
