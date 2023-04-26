import 'package:flutter/material.dart';
import 'package:receitas_18_04/model/receita.dart';
import 'package:receitas_18_04/modelviews/receitas.dart';
import 'package:receitas_18_04/views/widget/app_bar.dart';

class Brasileira extends StatelessWidget {
  const Brasileira({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: PageAppBar(nomePagina: "Receitas Brasileiras")),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: ListaDeReceitas.map((Receita receita) {
          return InkWell(
            onTap: () {
              // Ao clicar na receita, navega para a tela de detalhes passando a receita como argumento
              Navigator.pushNamed(context, '/detalhes', arguments: receita);
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
