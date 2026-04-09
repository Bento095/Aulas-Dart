

/*1) Calculando idade para carteira de motorista
Escreva um programa em Dart que verifica se uma pessoa pode ou não dirigir um veículo com base na sua idade. O programa deve solicitar ao usuário que digite sua idade e então informar, com uma mensagem, se ele pode dirigir ou não. Implemente o código para fazer essa verificação.*/

import 'dart:io';

void main(){
  mesEmNumeros();
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