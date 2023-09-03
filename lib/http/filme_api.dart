// Importando as bibliotecas necessárias
import 'dart:convert'; // Biblioteca para lidar com codificação e decodificação de JSON.
//import 'package:trabalho_consulta_api/model/filme.dart'; // Importando a classe Filme do seu modelo.
import '../model/filme.dart';

// Definindo a classe FilmeApi
class FilmeApi {
  // Uma string que simula a resposta da API em formato JSON.
  String respostaApi = '''
    [
      {
          "id": 1,
          "titulo": "Homem-Aranha",
          "resumo":"Depois de ser picado por uma aranha geneticamente modificada em uma demonstração científica, o jovem nerd Peter Parker ganha superpoderes. Inicialmente, ele pretende usá-los para para ganhar dinheiro, adotando o nome de Homem-Aranha e se apresentando em lutas de exibição. Porém, ao presenciar o assassinando de seu tio Ben e sentir-se culpado, Peter decide não mais usar seus poderes para proveito próprio e sim para enfrentar o mal, tendo como seu primeiro grande desafio o psicótico Duende Verde.",
          "elenco":"ELENCO: Tobey Maguire, Stan Lee, Kirsten Dunst, Willem Dafoe, James Franco, Rosemary Harris, Cliff Robertson",
          "capa":"https://media.fstatic.com/yVKcl5_r_pxtqdWrbPeXJim8W_0=/322x478/smart/filters:format(webp)/media/movies/covers/2020/12/Spider-Man_2002.jpeg",
          "duracao":120
      },
      {
          "id": 2,
          "titulo": "Homem-Aranha 2",
          "resumo":"O Dr. Otto Octavius é transformado em Doutor Octopus quando uma falha em uma experiência de fusão nuclear resulta em uma explosão que mata sua esposa. Ele culpa o Homem-Aranha pelo acidente e deseja vingança. Enquanto isso, o alter ego do herói, Peter Parker, perde seus poderes. Para complicar as coisas, o seu melhor amigo odeia o Homem-Aranha e sua amada fica noiva.",
          "elenco":"ELENCO: Tobey Maguire, Stan Lee, Kirsten Dunst, Willem Dafoe, Alfred Molina, James Franco, Rosemary Harris, Cliff Robertson",
          "capa":"https://2.bp.blogspot.com/-NVJXFEe1sTc/UBa2u63IohI/AAAAAAAAHr0/2k9CR_q2v_k/s1600/07+Homem-Aranha+2+-+ibaldomarcel.blogspot.com+-+C%C3%B3pia.jpg",
          "duracao":120
      },
      {
          "id": 3,
          "titulo": "Homem-Aranha 3",
          "resumo":"O relacionamento entre Peter Parker e Mary Jane parece estar dando certo, mas outros problemas começam a surgir. A roupa de Homem-Aranha torna-se preta e acaba controlando Peter - apesar de aumentar seus poderes, ela revela e amplia o lado obscuro de sua personalidade. Com isso, os vilões Venom e Homem-Areia tentam destruir o herói.",
          "elenco":"ELENCO: Tobey Maguire, Stan Lee, Kirsten Dunst, Willem Dafoe, Topher Grace, Thomas Haden Church, James Franco, Rosemary Harris, Cliff Robertson",
          "capa":"https://i0.wp.com/popoca.com.br/wp-content/uploads/2018/09/Homemaranha.jpg?fit=1000%2C563&ssl=1",
          "duracao":140
      }       
    ]
    ''';
  // Definindo um método assíncrono para buscar filmes offline.
  Future<List<Filme>> getFilmesOffline() async {
    // Decodificando a string JSON para um objeto Dart.
    final json = jsonDecode(respostaApi);
    
    // Convertendo os objetos JSON em List<Map<String, dynamic>>.
    final mapsFilme = json.cast<Map<String, dynamic>>();

    // Criando uma lista vazia para armazenar os objetos Filme.
    List<Filme> listFilmes = [];

    // Iterando por cada mapa de filme e convertendo em objetos Filme.
    for (var map in mapsFilme) {
      Filme filme = Filme.fromJson(map);
      listFilmes.add(filme);
    }

    // Delay simulado de 1 segundo (para simular o tempo de resposta da API).
    await Future.delayed(const Duration(seconds: 1));

    // Retornando a lista de filmes após o processo.
    return listFilmes;
  }
}
