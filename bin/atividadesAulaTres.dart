

/*1) Calculando idade para carteira de motorista
Escreva um programa em Dart que verifica se uma pessoa pode ou não dirigir um veículo com base na sua idade. O programa deve solicitar ao usuário que digite sua idade e então informar, com uma mensagem, se ele pode dirigir ou não. Implemente o código para fazer essa verificação.*/

import 'dart:io';

void main(){
  carteiraMotorista();
}


void carteiraMotorista() {
  int idade = 0;
  print('carteira de motorista');
  print('digite a sua idade: ');
  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != '') {
      idade = int.parse(entrada);
    }
  if (idade <= 17) {
    print('nao pode');
  } else {
    print('pode');
  }
  }
}