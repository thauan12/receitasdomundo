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
    imagem: "assets/image/bolo_de_chocolate.jpg",
    video_preparo:
        "https://www.tudogostoso.com.br/receita/62547-a-melhor-receita-de-bolo-de-chocolate.html");

final receita2 = Receita(
    nome: "Torta de frango",
    nacionalidade: "Brasileira",
    descricao: "Torta de frango cremosa",
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
    imagem: "assets/image/torta_de_frango.jpg",
    video_preparo:
        "https://www.tudogostoso.com.br/receita/1282-torta-de-frango.html");

final receita3 = Receita(
    nome: "Pastel",
    nacionalidade: "Brasileira",
    descricao: "Apenas teste",
    tempo_preparo: "20 min",
    ingredientes: [
      '500g farinha de trigo',
      'Agua',
      '1 Colher(sopa) de aguardente',
      'Recheio',
      '2 ovos cozidos',
      '1 dente de alho',
      'sal',
      'Óleo',
      'Manteiga'
    ],
    modo_preparo:
        "Em um recipiente, coloque a farinha, o óleo, a aguardente e o sal Misture com a água morna. Mexa com as mãos, e a seguir amasse bem sobre uma superfície lisa. Após amassar bem, abra porções de massa com auxílio do rolo (deixe a massa bem fina) empregue o recheio. Una as bordas e aperte com a ponta de um garfo. Recheio, frite",
    imagem: "assets/image/Pastel.jpg",
    video_preparo: "https://www.tudogostoso.com.br/receita/8645-pastel.html");

final receita4 = Receita(
    nome: "Macarrão",
    nacionalidade: "Italiana",
    descricao: "Macarrão tradicional",
    tempo_preparo: "25 min",
    ingredientes: ["500g de macarrão", 'Sal', 'Agua', 'Óleo', 'molho'],
    modo_preparo: "Esquentar a agua colocar o macarrão depois o molho",
    imagem: "assets/image/macarrao.png",
    video_preparo:
        "https://www.tudogostoso.com.br/receita/101040-macarrao-simples.html");

final receita5 = Receita(
    nome: "Pizza",
    nacionalidade: "Italiana",
    descricao: "Pizza de calabresa",
    tempo_preparo: "45 min",
    ingredientes: [
      'Massa',
      'Queijo',
      'Calabresa',
      'Milho',
      'Azeitona',
      'Molho',
      'Oregano'
    ],
    modo_preparo:
        "Abra a massa, passe o molho de tomate, espalhe o queijo, espalhe a cabalresa, coloque azeitona e milho e finalize com oregano a gosto",
    imagem: "assets/image/pizza.jpg",
    video_preparo: "URL");

final receita6 = Receita(
    nome: "Bruschetta",
    nacionalidade: "Italiana",
    descricao: "Uma torrada rechada muito famosa na Italia",
    tempo_preparo: "20 min",
    ingredientes: ['Pão', 'Queijo', 'Prejuntos', 'Cebola', 'Tomate', 'Oregano'],
    modo_preparo:
        "Corte o pao, depois pique o queijo o presunto a cebola e o tomate coloca por dima do pão espalhe o oregano e leve ao forno",
    imagem: "assets/image/Bruschetta.jpg",
    video_preparo: "URL");

List<Receita> ListaDeReceitas = [receita1, receita2, receita3];
List<Receita> ListaDeReceitas2 = [receita4, receita5, receita6];
