// Importações dos arquivos que serão utilizados
import 'classes/enums.dart';
import 'classes/pessoa.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'utils.dart';

/**
 * RECOMENDAÇÕES DA TUTORA
 * 
 * Arquivo de testes e execução do sistema criado.
 * Os testes para o sistema se darão todos através de prints no console.
 * 
 * Abaixo você encontrará o método main, que é o método principal que será executado.
 * 
 * Para executar esse arquivo, digite o seguinte comando no terminal: dart run main.dart
 * Outra alternativa é instalar a extensão Dart no seu VS Code.
 * Isso fará aparecer um botão tipo "play" no canto direito superior. Basta clicar para executar o projeto.
 * 
 * Dentro do método main, vocês encontrarão indicações para criar objetos das classes criadas e executar os métodos criados.
 * Recomenda-se que essas declarações e execuções sejam feitas a medida que vocês forem criando as classes e métodos pedidos,
 * pois isso servirá para testar se o que você fez está funcionando.
 * 
 * Não se prendam apenas aos comentários e recomendações. Façam todos os testes que quiserem fazer.
 * 
 * Existe um método "pularLinha" que foi criado dentro do arquivo utils.
 * Caso queiram, utilizem-no para pular linha entre um bloco de testes e outro,
 * apenas por questões de organização e melhor visualização das saídas.
 * Para executá-lo, basta chamá-lo em qualquer ponto do método main, dessa maneira:
 * pularLinha();
 */

main() {
  /* Declaração de objetos Produto */

  // Declare aqui alguns objetos do tipo Produto...
  // Exemplo: Produto produtoA = Produto("Colônia Floratta Flores Secretas 75ml", 104.90, 3);

  final produtoA = Produto(
    nomeProduto: 'Kit Presente Coleção Mini Perfumaria (4 itens)',
    valor: 111.80,
    qtdEmEstoque: 12,
  );

  final produtoB = Produto(
    nomeProduto: 'LILY EAU DE PARFUM 50ml',
    valor: 294.90,
    qtdEmEstoque: 35,
  );

  final produtoC = Produto(
    nomeProduto: 'ELISÉ EAU DE PARFUM 50 ML',
    valor: 294.80,
    qtdEmEstoque: 35,
  );

  final produtoD = Produto(
    nomeProduto: "FLORATTA My Blue Desodorante Colônia 75m",
    valor: 129.90,
    qtdEmEstoque: 50,
  );

  final produtoE = Produto(
    nomeProduto: 'Malbec Ultra Bleu Desodorante Colônia 100ml',
    valor: 179.90,
    qtdEmEstoque: 80,
  );

  final produtoF = Produto(
    nomeProduto:
        'Botica 214 Verano en Firenze Eau de Parfum Fougère Aromático 90ml',
    valor: 164.90,
    qtdEmEstoque: 35,
  );

  final produtoG = Produto(
    nomeProduto: 'Egeo Bomb Black Desodorante Colônia 90ml',
    valor: 199.80,
    qtdEmEstoque: 20,
  );

  final produtoH = Produto(
    nomeProduto: 'Shampoo Match Ciências das Curvas 300ml',
    valor: 41.90,
    qtdEmEstoque: 12,
  );

  final produtoI = Produto(
    nomeProduto: 'Sérum Facial de Alta Potência Botik Retinol Puro 30ml',
    valor: 204.90,
    qtdEmEstoque: 35,
  );

  final produtoJ = Produto(
    nomeProduto: 'LINHA PET Limpa e Hidrata Patinhas Au.Migos Pets 120ml',
    valor: 35.90,
    qtdEmEstoque: 50,
  );
  print(produtoA);
  print(produtoB);
  print(produtoC);
  print(produtoD);
  print(produtoE);
  print(produtoF);
  print(produtoG);
  print(produtoH);
  print(produtoI);
  print(produtoJ);

  /* Testes da classe Produto */
  // Teste o método realizarVenda algumas vezes...
  pularLinha();
  produtoA.realizarVenda();
  produtoA.realizarVenda();
  produtoB.realizarVenda();
  produtoB.realizarVenda();
  pularLinha();

  /* Testes da classe Produto */

  // Teste o método realizarVenda algumas vezes...
  // Exemplo: produtoA.realizarVenda();
  // Saída esperada 1: Compra de um produto Colônia Floratta Flores Secretas 75ml realizada com sucesso!
  // Saída esperada 2: No momento não possuímos o produto Colônia Floratta Flores Secretas 75ml em estoque.

  // Teste o método verReceitaGerada algumas vezes...
  // Exemplo: print(produtoA.verReceitaGerada());

  pularLinha();
  print(
      'A receita gerada pelo produto ${produtoA.nomeProduto} é: ${produtoA.verReceitaGerada()} reais');
  print(
      'A receita gerada pelo produto ${produtoB.nomeProduto} é: ${produtoB.verReceitaGerada()} reais');
  pularLinha();

  // pularLinha();

  /* ------------------------------------------ */

  /* Declaração de objetos Pessoa */

  // Declare aqui alguns objetos do tipo Pessoa...
  // Exemplo: Pessoa pessoaA = Pessoa('Maria', '12345678900', 1994);

  /* Testes da classe Pessoa */

  final maria = Pessoa(
    nome: 'Maria',
    cpf: '12345678900',
    genero: Genero.Feminino,
    dataDeNascimento: DateTime.parse('1994-01-06'),
  );
  final joao = Pessoa(
    nome: 'João',
    cpf: '98345678900',
    genero: Genero.Masculino,
    dataDeNascimento: DateTime.parse('1990-10-04'),
  );
  final ana = Pessoa(
    nome: 'Ana',
    cpf: '87654321900',
    genero: Genero.Feminino,
    dataDeNascimento: DateTime.parse('1998-07-15'),
  );

  final pedro = Pessoa(
    nome: 'Pedro',
    cpf: '76543219800',
    genero: Genero.Masculino,
    dataDeNascimento: DateTime.parse('1985-03-22'),
  );
  final carla = Pessoa(
    nome: 'Carla',
    cpf: '65432198700',
    genero: Genero.Feminino,
    dataDeNascimento: DateTime.parse('1992-11-30'),
  );
  final rafaela = Pessoa(
    nome: 'Rafaela',
    cpf: '54321987600',
    genero: Genero.Outro,
    dataDeNascimento: DateTime.parse('1980-09-10'),
  );

  final leandro = Pessoa(
    nome: 'Leandro',
    cpf: '43219876500',
    genero: Genero.Outro,
    dataDeNascimento: DateTime.parse('1976-05-25'),
  );
  final fernanda = Pessoa(
    nome: 'Fernanda',
    cpf: '32198765400',
    genero: Genero.Feminino,
    dataDeNascimento: DateTime.parse('1991-12-08'),
  );
  final mariana = Pessoa(
    nome: 'Mariana',
    cpf: '21987654300',
    genero: Genero.Outro,
    dataDeNascimento: DateTime.parse('1987-02-18'),
  );

  final gabriel = Pessoa(
    nome: 'Gabriel',
    cpf: '19876543200',
    genero: Genero.Outro,
    dataDeNascimento: DateTime.parse('2000-08-03'),
  );

  print(maria);
  print(joao);
  print(ana);
  print(pedro);
  print(carla);
  print(rafaela);
  print(leandro);
  print(fernanda);
  print(mariana);
  print(gabriel);
  pularLinha();
  maria.fala('Oi, tudo bem?');
  joao.fala('Boa tarde , Tudo bem com vocês?');
  ana.fala('Olá, Maria e João. Bom vê-los por aqui!');

  // Teste o método falar algumas vezes...

  // Exemplo: pessoaA.falar('Oi, tudo bem?');
  // Saída esperada: Maria diz: Oi, tudo bem?

  // Teste o método maioridade algumas vezes...
  // Exemplo: pessoaA.maioridade();
  // Saída esperada 1: Maria tem 30 anos, portanto é maior de idade.
  maria.maioridade();
  // Saída esperada 2: João tem 14 anos, portanto é menor de idade.
  joao.maioridade();
  pularLinha();

  /* ------------------------------------------ */

  final revendedorA = Revendedor(
    matricula: '0001',
    nome: 'Hevelise',
    cpf: '12345678900',
    genero: Genero.Feminino,
    dataDeNascimento: DateTime.parse('1994-01-06'),
  );

  

  revendedorA.venderProduto(produtoA);
  print(
      "Revendedor(a): ${revendedorA.nome}, Quantidade de produtos vendidos: ${revendedorA.produtosVendidos.length}");

  pularLinha();

  final revendedorB = Revendedor(
    matricula: '0002',
    nome: 'Gabriel',
    cpf: '19876543200',
    genero: Genero.Masculino,
    dataDeNascimento: DateTime.parse('2000-08-03'),
  );



  revendedorB.venderProduto(produtoB);
  print(
      "Revendedor(a): ${revendedorB.nome}, Quantidade de produtos vendidos: ${revendedorB.produtosVendidos.length}");

  pularLinha();

  final revendedorC = Revendedor(
    matricula: '0002',
    nome: 'Pedro',
    cpf: '19876543222',
    genero: Genero.Outro,
    dataDeNascimento: DateTime.parse('2000-09-03'),
  );

  

  revendedorB.venderProduto(produtoC);
  print(
      "Revendedor(a): ${revendedorC.nome}, Quantidade de produtos vendidos: ${revendedorC.produtosVendidos.length}");

      pularLinha();


        revendedorA.falar("Olá, temos promoções!");
        revendedorB.falar("Olá, temos promoções!");
        revendedorC.falar("Olá, temos promoções!");


}
