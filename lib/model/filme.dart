// Vamos começar definindo uma classe chamada Filme.
class Filme {
  // Aqui declaramos as propriedades que um Filme terá.
  // Elas vão armazenar informações como id, título, resumo, etc.
  int id;
  String titulo;
  String resumo;
  String capa;
  int duracao;
  String elenco;

  // Agora estamos definindo o construtor da classe Filme.
  // Um construtor é como uma receita para criar um objeto dessa classe.
  Filme({
    this.id = 0,
    this.titulo = "",
    this.resumo = "",
    this.capa = "",
    this.duracao = 0,
    this.elenco = "",
  });

  // Este é um método de fábrica chamado "fromJson".
  // Ele é usado para criar um objeto Filme a partir de um mapa (json).
  factory Filme.fromJson(Map<String, dynamic> json) {
    // Dentro do método de fábrica, estamos retornando um novo objeto Filme.
    // E estamos preenchendo suas propriedades com os valores do mapa (json) fornecido.
    return Filme(
      id: json['id'],
      titulo: json['titulo'],
      resumo: json['resumo'],
      capa: json['capa'],
      duracao: json['duracao'],
      elenco: json['elenco'],
    );
  }
}
