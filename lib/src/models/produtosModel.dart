class ProdutosModel {
  final String id;
  final String nome;
  final String imagem;
  final String categoria;
  final double valor;
  final double desconto;
  final double avaliacoes;

  ProdutosModel(this.id, this.nome, this.imagem, this.categoria, this.valor,
      this.desconto, this.avaliacoes);
}

final produtos = [
  ProdutosModel(
      "1",
      "Sanduíche Carne",
      "assets/imagens/01.png",
      "Sanduíches",
      50,
      3,
      5),
  ProdutosModel(
      "2",
      "Pizza Calabresa",
      "assets/imagens/02.png",
      "Pizza",
      40,
      3,
      5),
];
