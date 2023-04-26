import 'package:receitas_18_04/model/receita.dart';

final receita1 = Receita(
    nome: "Bolo de chocolate",
    nacionalidade: "Brasileira",
    descricao: "Bolo de chocolate",
    tempo_preparo: "45 min",
    ingredientes: [
      '4 ovos',
      '2 Colheres de manteiga',
      '2 Xícaras de açúcar',
      '1 Xícara de leite',
      '4 Colheres de chocolate em pó',
      '3 Xícaras de farinha de trigo',
      '2 Colheres de Fermento'
    ],
    modo_preparo:
        'Em um liquidificador adicione os ovos, o chocolate em pó, a manteiga, a farinha de trigo, o açúcar e o leite, depois bata por 5 minutos. Adicione o fermento e misture com uma espátula delicadamente.\n\nEm uma forma untada, despeje a massa e asse em forno médio (180 ºC) preaquecido por cerca de 40 minutos. Não se esqueça de usar uma forma alta para essa receita: como leva duas colheres de fermento, ela cresce bastante! Outra solução pode ser colocar apenas uma colher de fermento e manter a sua receita em uma forma pequena.',
    imagem: "assets/image/teste.jpg",
    video_preparo: "https://www.youtube.com/watch?v=hK8VcKZ1VqQ");

final receita2 = Receita(
    nome: "Torta de frango",
    nacionalidade: "Brasileira",
    descricao: "Apenas teste",
    tempo_preparo: "60 min",
    ingredientes: [
      '500 g de peito de frango sem pele',
      '4 Colheres de óleo',
      '1 Cebola picada',
      '1 Xícara de ervilha',
      '250 ml de leite',
      '2 Ovos',
      'Sal a gosto',
      'Queijo ralado',
    ],
    modo_preparo:
        'Cozinhe o peito de frango no caldo até ficar macio. Separe 1 xícara (chá) de caldo do cozimento e reserve, depois de aguardar, refogue os demais ingredientes e acrescente as ervilhas por último. Desfie o frango, misture ao caldo e deixe cozinhar até secar.',
    imagem: "assets/image/teste.jpg",
    video_preparo: "URL");

final receita3 = Receita(
    nome: "Pastel",
    nacionalidade: "Brasileira",
    descricao: "Apenas teste",
    tempo_preparo: "1 min",
    ingredientes: [],
    modo_preparo: "Preparando",
    imagem: "assets/image/teste.jpg",
    video_preparo: "URL");
final receita4 = Receita(
    nome: "Macarrão",
    nacionalidade: "Italiana",
    descricao: "Apenas teste",
    tempo_preparo: "45 min",
    ingredientes: ["Massa", 'Molho'],
    modo_preparo: "Esquentar a agua colocar o macarrão depois o molho",
    imagem: "assets/image/teste.jpg",
    video_preparo: "https://www.youtube.com/watch?v=hK8VcKZ1VqQ");

final receita5 = Receita(
    nome: "Pizza",
    nacionalidade: "Italiana",
    descricao: "Apenas teste",
    tempo_preparo: "45 min",
    ingredientes: [],
    modo_preparo: "Preparando",
    imagem: "assets/image/teste.jpg",
    video_preparo: "URL");

final receita6 = Receita(
    nome: "Croquete",
    nacionalidade: "Italiana",
    descricao: "Apenas teste",
    tempo_preparo: "1 min",
    ingredientes: [],
    modo_preparo: "Preparando",
    imagem: "assets/image/teste.jpg",
    video_preparo: "URL");

List<Receita> ListaDeReceitas = [receita1, receita2, receita3];
List<Receita> ListaDeReceitas2 = [receita4, receita5, receita6];
