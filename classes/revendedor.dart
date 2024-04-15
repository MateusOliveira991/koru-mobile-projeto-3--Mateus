import 'dart:ffi';

import 'produto.dart';
import 'enums.dart';

abstract class Revendedor extends Pessoa {
  final matricula;
  List<Produto> produtosVendidos = [];
  double porcentagemLucro = 0.3;

  var ;
  
  static var cpf;
  
  static Null dataDeNascimento;

  Revendedor (this.matricula, {required super.dataDeNascimento, required super.nome, required super.cpf, required super.genero} {this.matricula) : super('', null, dataDeNascimento: null, nome: '', , cpf: null, genero: null) {
    
  }
  
  get genero => null;

  void falar(String falar), {
    
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
  try {
    produto.realizarVenda();
var produtosVendidos;
produtosVendidos.add(produto);
  } catch (excecao) {
    throw excecao;
  }
}

  double calcularTotalVendido() {
    double total = 0.0;

    var produtosVendidos;
    produtosVendidos.forEach((produto) => total += produto.valor);

    return total;
  }

  double calcularMediaProdutosVendidos() {
    double total = 0.0;
    var produtosVendidos;
    if (produtosVendidos.isEmpty) {
      return 0;
    }

    produtosVendidos.forEach((produto) => total += produto.valor);

    return total / produtosVendidos.length;
  }
}

class implement {
}

 DynamicsCompressorNode(nome, cpf, {dynamicdataDeNascimento = null} {
   // TODO: implement DynamicsCompressorNode
   throw UnimplementedError();
 }
 class Pessoa {
  String nome;
  Int matricula;

  Pessoa(this.nome, this.matricula, {required Comparable<DateTime> dataDeNascimento, required Comparable<String> nome, required Comparable<String> cpf, required Genero genero{dynmicrequired"nome", required Genero genero});
}
  
    double calcularLucro() {
    double lucroTotal = 0;
    var precosVenda;
    for (double preco in precosVenda) {
      lucroTotal += preco;
    }
    return lucroTotal;
  }

  void calcularLucroResumo() {
    double totalVendido = calcularLucro();
    var precosVenda;
    double media = totalVendido / precosVenda.length;
    double lucro = calcularLucro();

    print("O total vendido por $nome foi ${totalVendido.toStringAsFixed(2)} reais e a média aritmética de valor dos produtos vendidos é ${media.toStringAsFixed(2)} reais.");
    print("O lucro recebido foi de ${lucro.toStringAsFixed(2)} reais.");
  }

void main() {
  // Criação de um exemplo de lista de preços de venda
  List<double> precosVendaJoao = [100, 150, 200, 250, 200, 200, 100, 100, 200, 226];

  // Criação de uma instância de Revendedor para João
  Revendedor1 joao = Revendedor1("João", precosVendaJoao, totalVendido);

  // Chamada do método para calcular o lucro e exibir o resumo
  joao.calcularLucroResumo();
}

mixin totalVendido {
}

class Revendedor1 {
  Revendedor1(Comparable<String> s, List<double> precosVendaJoao, Type totalVendido);

  @override
  bool operator ==(Object other) {
    // TODO: implement ==
    return super == other;
  }

  Revendedor(String s, List<double> precosVendaJoao, Type totalVendido) async {

    // TODO/ implement Revendedor1
    throw UnimplementedError();
  } @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
  void calcularLucroResumo() {

  }
}

mixin generoString {
}