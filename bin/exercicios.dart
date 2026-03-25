import 'dart:io';

void main() {
  calcularSalario();
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
  double idadeUm = double.parse(stdin.readLineSync()!);
  print('Digite a idade da segunda pessoa: ');
  double idadeDois = double.parse(stdin.readLineSync()!);
  print('Digite a idade da terceira pessoa: ');
  double idadeTres = double.parse(stdin.readLineSync()!);
  var media = (idadeUm + idadeDois + idadeTres) / 3;
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

/* 5) Consertando erros em um programa
Você está trabalhando em um programa de banco, que faz três ações:

Mostrar o saldo bancário do usuário;
Permitir que o usuário faça uma transferência pix (de forma simplificada);
Subtrair o valor do pix do valor de saldo.
No entanto, o código possui erros. Analise-o com atenção:

import 'dart:io';

string saldo = 1000.0; // Saldo inicial em reais

void main() {
  print('Boas-vindas ao seu banco digital!')
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}')

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync());

  saldo -= valorPix;

  print('Pix realizado com sucesso!')
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
}
Copiar código
Logo, sua tarefa faça as correções no código acima. Veja as dicas:

Abra um novo projeto Dart em seu computador;
Copie e cole o código acima;
Faça os ajustes necessários no código;
Rode o programa no terminal e verifique se ele apresenta os comportamentos esperados. */

