import 'dart:io';

void main() {
  geradorDeCupons();
}

void olaNome() {
  print("Olá, me chamo Dart. Qual o seu nome?");
  var nome = stdin.readLineSync();
  print("Muito prazer, $nome. Vamos fazer programas juntos.");
}

void capturarNomeIdade() {
  print('Qual o seu nome?');
  var nome = stdin.readLineSync();
  print('Qual a sua idade?');
  var idade = stdin.readLineSync();
  print('Seu nome é $nome e sua idade é $idade');
}

// 1) Calculando o dobro de um número
// Faça um programa simples que calcula o dobro de um número inserido no terminal.

void calculaDobro() {
  print('Digite o numero a ser dobrado: ');
  double numero = double.parse(stdin.readLineSync()!);
  double dobro = numero * 2;
  print('O dobro de $numero é $dobro');
}

// 2) Descobrindo a média de idades
// Escreva um programa que calcula a idade média de três pessoas. O usuário deve ser capaz de inserir as três idades e, ao final, o programa exibe a média dos números.

void calculaMediaIdades() {
  print('Digite a idade da primeira pessoa: ');
  double idadeUm = double.parse(stdin.readLineSync()!); //podia ter usado int
  print('Digite a idade da segunda pessoa: ');
  double idadeDois = double.parse(stdin.readLineSync()!);
  print('Digite a idade da terceira pessoa: ');
  double idadeTres = double.parse(stdin.readLineSync()!);
  var media = (idadeUm + idadeDois + idadeTres) / 3; //aqui podia ser double
  print('A média das idades é $media');
}

// 3) Escrevendo a ficha de participante
//Desenvolva um programa que exibe uma pequena “ficha” com informações suas, utilizando os conhecimentos do Dart! As informações da ficha são:

//Nome;
//CPF;
//Idade;
//Altura;
//Participo da comunidade?
//Declare esses dados dentro da variável e depois imprima-os no terminal.

void fichaParticipante() {
  print('Digite o seu nome: ');
  var nome = stdin.readLineSync();
  print('Digite seu CPF:');
  double cpf = double.parse(stdin.readLineSync()!);
  print('Digite sua altura: ');
  double altura = double.parse(stdin.readLineSync()!);
  stdout.write('Participa da comunidade? 0 para NÃO e 1 para SIM: ');
  double participa = double.parse(stdin.readLineSync()!);
  bool comunidadeBool = (participa == 1);
  // Criamos uma String dinâmica baseada no valor do booleano
  String statusComunidade = comunidadeBool ? 'Sim' : 'Não';
  print('''
  Nome: $nome
  CPF: $cpf
  Altura: $altura
  Participa da comunidade? $statusComunidade
  ''');
}

/* 4) Calculando o salário do freela
Você foi contratado para um trabalho freelance. Crie um programa que lê as horas trabalhadas e calcula o salário líquido, considerando:

A empresa paga 50 reais por hora trabalhada;
O desconto do salário é de 5% e deve ser subtraído do salário bruto */

void calcularSalario() {
  print('Digite o número de horas trabalhadas: ');
  double horas = double.parse(stdin.readLineSync()!);
  double salario = (horas * 50 - (horas * 50 * 0.05));
  print('O salário líquido é R\$ $salario');

}

// 5 continua em outro arquivo (corrigir.dart)

// 6 continua em atividadeSeis.dart

// 7 complementar ao 6

/* 8) Implementando um programa de cupons
Escreva um programa que informa quantos cupons um cliente ganhou ao fazer compras no mercado No Precinho. A regra da promoção é: a cada 50 reais gastos por compra, a pessoa recebe um cupom. O programa deve:

Capturar a entrada com o valor gasto;
Exibir mensagem de quantos cupons foram ganhos.*/

void geradorDeCupons() {
  print('Digite o valor gasto: ');
  double gasto = double.parse(stdin.readLineSync()!);
  double cupons = (gasto / 50);
  int cuponsInteiros = cupons.truncate();
  print('Você recebeu $cuponsInteiros cupons nessa compra'); 
}