class Receita {
  final String nome;
  final String nacionalidade;
  final String descricao;
  final String tempo_preparo;
  final List ingredientes;
  final String modo_preparo;
  final String imagem;
  final String video_preparo;

  Receita({
    required this.nome,
    required this.nacionalidade,
    required this.descricao,
    required this.tempo_preparo,
    required this.ingredientes,
    required this.modo_preparo,
    required this.imagem,
    required this.video_preparo,
});
}