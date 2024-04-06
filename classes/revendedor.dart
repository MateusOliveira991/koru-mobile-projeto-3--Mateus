import 'pessoa.dart';
import 'produto.dart';
import 'enums.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List<Produto> produtosVendidos = [];
  double porcentagemLucro = 0.3;

  Revendedor({
    required this.matricula, 
    required String nome, 
    required String cpf, 
    required DateTime dataDeNascimento,
    required Genero genero
  }) : super(nome: nome, cpf: cpf, dataDeNascimento: dataDeNascimento, genero: genero);



  void falar(String falar) {
    
    switch (genero) {
      case Genero.Masculino:
        print('Revendedor $nome diz: $falar');
        break;
      case Genero.Feminino:
        print('Revendedora $nome diz: $falar');
        break;
      case Genero.Outro:
        print('Pessoa revendedora $nome diz: $falar');
        break;
    }
  }

  void venderProduto(Produto produto) {
    produto.realizarVenda();
    this.produtosVendidos.add(produto);
  }
}