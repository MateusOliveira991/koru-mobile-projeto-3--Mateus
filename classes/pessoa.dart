import 'enums.dart';

class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataDeNascimento;
  final Genero genero;
  late final int idade;

  Pessoa(
      {required this.nome,
      required this.cpf,
      required this.dataDeNascimento,
      required this.genero}) {
    idade = _calcularIdade();
  }

  int _calcularIdade() {
    final hoje = DateTime.now();
    final anos = hoje.year - dataDeNascimento.year;
    final meses = hoje.month - dataDeNascimento.month;
    final dias = hoje.day - dataDeNascimento.day;

    return (meses < 0 || (meses == 0 && dias < 0)) ? anos - 1 : anos;
  }

  void maioridade() {
    print(
        '$nome tem $idade anos, portanto é ${idade >= 18 ? 'maior' : 'menor'} de idade.');
  }

  void fala(String fala) {
    print('$nome diz: $fala');
  }

  @override
  String toString() {
    return '$nome, $cpf, $idade';
  }
}
