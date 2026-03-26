/* 6) Identificando e corrigindo tipos no Dart
Chegou nas suas mãos um programa de retirada de pontos de um clube de benefícios.

A lógica deve ser a seguinte:

Os pontos iniciais começam no valor 100;
O programa inicia com uma mensagem: “*Você tem [x] pontos.*”;
Em seguida, exibe a mensagem: “*Quantos pontos você gostaria de resgatar?*”;
O usuário digita quantos [y] pontos deseja retirar;
O programa faz uma subtração (pontos iniciais [100] - pontos retirados [y]);
Por fim, mostra uma mensagem que informa: “Você resgatou [y] pontos. Pontos restantes: [z].””
Você já tem esse código pronto: */

import 'dart:io';

void main() {
  double pontosIniciais = 100;
  double pontosRetirados;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");

  pontosRetirados = double.parse(stdin.readLineSync()!);
  
  double pontosRestantes = definirPontosRestantes(pontosIniciais,pontosRetirados);

  print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");
}

double definirPontosRestantes(double pontosIniciais, double pontosRetirados) {
  return pontosIniciais - pontosRetirados;
  }


/* Após atentamente ler o código, faça os ajustes para que o programa funcione adequadamente no terminal do seu VSCode.*/


/* 7) Refatorando o código do clube de benefícios com função
Se você resolveu o exercício anterior, agora refatore (modifique) o código, colocando a funcionalidade de subtração de pontos dentro de uma função.

Vamos lá?*/


