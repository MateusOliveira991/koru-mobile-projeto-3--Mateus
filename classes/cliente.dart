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
      revendedor.venderProduto(produto);
      dinheiro -= produto.valor;
      produtosComprados.add(produto);
    } else {
      print("$nome não possui dinheiro suficiente para comprar ${produto.nomeProduto}");
    };
  }
}
