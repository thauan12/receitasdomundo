import 'package:flutter/material.dart';
import 'package:receitas_18_04/model/receita.dart';
import 'package:receitas_18_04/modelviews/receitas.dart';
import 'package:receitas_18_04/views/receitaCompleta.dart';
import 'package:receitas_18_04/views/widget/app_bar.dart';

class Italiana extends StatelessWidget {
  const Italiana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: PageAppBar(nomePagina: "Receitas Italianas")),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: ListaDeReceitas2.map((Receita receita) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReceitaCompleta(receita: receita)));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Imagem da receita
                Expanded(
                  child: Image.asset(
                    receita.imagem,
                    fit: BoxFit.cover,
                  ),
                ),
                // Nome da receita
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    receita.nome,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
