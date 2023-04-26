import 'package:flutter/material.dart';
import 'package:receitas_18_04/model/receita.dart';
import 'package:receitas_18_04/views/widget/app_bar.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ReceitaCompleta extends StatelessWidget {
  final Receita receita;

  const ReceitaCompleta({Key? key, required this.receita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: PageAppBar(nomePagina: receita.nome),
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10.0)),
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(receita.imagem),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: size.height * .01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      receita.nome,
                      style: const TextStyle(fontSize: 25),
                    ),
                    const Spacer(),
                    const Icon(Icons.timer),
                    Text(
                      receita.tempo_preparo,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Receita típica ${receita.nacionalidade}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ingredientes:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children: receita.ingredientes
                          .map((ingrediente) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.check),
                                    const SizedBox(width: 8.0),
                                    Expanded(
                                        child: Text(
                                      ingrediente,
                                      style: const TextStyle(fontSize: 18),
                                    )),
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Text(
                      'Modo de Preparo: ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        receita.modo_preparo,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        String url = receita.video_preparo;
                        if (await canLaunchUrlString(url)) {
                          await launchUrlString(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Row(
                        children: const [
                          Icon(Icons.video_library),
                          Text(
                            'Assistir o modo de preparo',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
