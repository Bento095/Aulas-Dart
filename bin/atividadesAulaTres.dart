

/*1) Calculando idade para carteira de motorista
Escreva um programa em Dart que verifica se uma pessoa pode ou não dirigir um veículo com base na sua idade. O programa deve solicitar ao usuário que digite sua idade e então informar, com uma mensagem, se ele pode dirigir ou não. Implemente o código para fazer essa verificação.*/

import 'dart:io';

void main(){
  maioridade();
}

void carteiraDeMotorista() {
  print('*** Carteira de Motorista ***');
  stdout.write('Digite sua idade: ');
  String? entrada = stdin.readLineSync()?.trim() ?? ''; // deixa tudo em um linha e ?? '' transforma o nulo em vazia.
  int idade = int.tryParse(entrada) ?? 0;

  if (idade >= 18) {
    print('✅ Pode tirar a carteira! (Idade: $idade)');
  } else if (idade > 0) {
    print('❌ Não pode. (Idade: $idade)');
  } else {
    print('⚠️ Entrada inválida. Digite um número real.');
  }
}

/* 2) Retornando os meses do ano
Desenvolva um programa em Dart que solicita ao usuário que digite um número de 1 a 12 e retorna o mês correspondente do ano. Por exemplo, ao digitar 2, o programa retorna a mensagem “Fevereiro”.*/

void mesEmNumeros() {
  var meses = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'];
  print('--- Mes em numeros ---');
  stdout.write('Digite um número de 1 a 12: ');
  int escolha = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (escolha >= 1 && escolha <= 12) {
    print('O mês escolhido é: ${meses[escolha - 1]}'); // subtrai 1 pq começa em 0
  } else {
    stderr.write('Mês invalido!');
  }
}

/* 3) Implementando a verificação de saldo
Você recebeu o seguinte trecho de código que, entre outras coisas, faz uma transferência Pix:

import 'dart:io';

double saldo = 1000.0; // Saldo inicial em reais

void main() {
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  print(saldo - valorPix);
}

 A sua missão é criar uma estrutura condicional que limite as transferências, seguindo a lógica a seguir:

Se houver saldo suficiente (o valor do Pix é igual ou menor ao saldo bancário): a operação é executada e o valor transferido é debitado do saldo;
Se houver saldo insuficiente (o valor do pix é maior que o saldo): o programa exibe uma mensagem “Saldo insuficiente”.*/


double saldo = 1000.0; // Saldo inicial em reais

void pix() {
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);
  if (0 > valorPix) {
    print('Valor incompatível.');
  } else if (valorPix > saldo){
    print('Saldo insuficiente');
  } else {
    print('Pix efetuado com sucesso! Saldo atual:');
    print(saldo - valorPix);
  }
}

/* 4) Verificando a maioridade em diferentes países
Escreva um programa que verifica a maioridade para dirigir em diferentes países. O programa deve solicitar ao usuário que insira sua idade e o país em que ele se encontra (por exemplo, Brasil, EUA, Japão) e informar se ele pode dirigir ou não, com base na legislação de cada país.

Utilize as idades mínimas de 18 anos para o Brasil, 16 anos para os EUA e 20 anos para o Japão. */

void maioridade() {
  Map <String, int> paises = {
    'eua': 16,
    'brasil': 18,
    'japao': 20
  };

  String pais = '';

  stdout.write('Digite sua idade: ');
  int idade = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  stdout.write('Digite seu pais(sem acentos): ');
  String entradaPais = (stdin.readLineSync() ?? '').trim();
  if (entradaPais.isNotEmpty){
    pais = entradaPais.toLowerCase();
  }

  // fazer um comparador dinamico de  pais
  if (pais.isNotEmpty && !paises.containsKey(pais)){
    print('pais nao encontrado');
  }else if (idade >= paises[pais]!) {
    print('Pode dirigir!');
  }else{
    print('pode nao');
  }
}