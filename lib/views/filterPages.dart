import 'package:flutter/material.dart';
import 'package:receitas_18_04/model/receita.dart';
import 'package:receitas_18_04/modelviews/receitas.dart';
import 'package:receitas_18_04/views/widget/app_bar.dart';
import 'package:receitas_18_04/views/widget/cards_receitas.dart';

class FilterRecipesPage extends StatelessWidget {
  const FilterRecipesPage({super.key, required this.recipesType});

  final String recipesType;

  @override
  Widget build(BuildContext context) {
    List<Receita> cards = ListaDeReceitas;
    List<Receita> filterCards =
        cards.where((recipe) => recipe.nacionalidade == recipesType).toList();
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: PageAppBar(
              nomePagina: 'Receita',
            )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text("Culinária $recipesType"),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filterCards.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CardReceita(receita: filterCards[index]);
                      }),
                )
              ],
            ),
          ),
        )
        // bottomNavigationBar: const BottomBarWithFourItens(),
        );
  }
}
