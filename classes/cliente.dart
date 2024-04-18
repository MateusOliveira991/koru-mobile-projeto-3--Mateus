import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  double dinheiro;
  List<Produto> produtosComprados = [];

  Cliente(
      {required String nome,
      required String cpf,
      required DateTime dataDeNascimento,
      required Genero genero,
      double? dinheiro})
      : dinheiro = dinheiro ?? 0.0,
        super(
            nome: nome,
            cpf: cpf,
            dataDeNascimento: dataDeNascimento,
            genero: genero);

  void adicionarDinheiro(double valor) {
    dinheiro += valor;
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    if (dinheiro >= produto.valor) {
      try {
        revendedor.venderProduto(produto);
        dinheiro -= produto.valor;
        produtosComprados.add(produto);
      } catch (e) {
        print("Erro ao comprar o produto: $e");
      }
    } else {
      print(
          "$nome não possui dinheiro suficiente para comprar ${produto.nomeProduto}");
    };
  }

  double mediaPrecoProdutosComprados() {
    if (produtosComprados.isEmpty) {
      return 0.0;
    }
    double soma = 0.0;
    for (var produto in produtosComprados) {
      soma += produto.valor;
    }

    return soma / produtosComprados.length;
  }

  void verResumo() {
    double totalGasto = 0.0;

    for (var produto in produtosComprados) {
      totalGasto += produto.valor;
    }

    double media =
        produtosComprados.isEmpty ? 0.0 : totalGasto / produtosComprados.length;
    print(
        "O total gasto por $nome foi $totalGasto reais e a média de valor dos produtos comprados é $media reais.");
  }

  void verProdutosComprados() {
  if (produtosComprados.isEmpty) {
    print("O cliente $nome ainda não comprou nenhum produto.");
    return;
  }

  produtosComprados.sort((a, b) => a.nomeProduto.compareTo(b.nomeProduto));

  print("Produtos comprados por $nome:");
  for (var produto in produtosComprados) {
    print("• ${produto.nomeProduto} - ${produto.valor}");
  }
}

  @override
  void fala(String fala) {
    print("Cliente $nome diz: $fala");
  }
}
