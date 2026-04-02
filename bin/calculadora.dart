// imports
import 'dart:io';

//corpo principal do programa.
void main() {
  print('Calculadora Dart');
  double numeroUm = 0;
  String operacao = '';
  double numeroDois = 0;

// bloco de definir as operações por função.
  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }
  
  void divisao() {
    print(numeroUm / numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void calcular() {
    switch (operacao) {
      case '+':
      soma();

      case '-':
      subtracao();

      case '/':
      divisao();

      case '*':
      multiplicacao();
      break;
    }

  }

print('Digite o primeiro número: ');
String? entrada = stdin.readLineSync();

if (entrada != null) {
  if (entrada != ''){
    numeroUm = double.parse(entrada);
  }
}

print('Digite a operação (+, -, *, /): ');
entrada = stdin.readLineSync();
if (entrada != null) {
  operacao = entrada;
}

print('Digite o segundo número: ');
entrada = stdin.readLineSync();
if (entrada != null) {
  if (entrada != ''){
    numeroDois = double.parse(entrada);
    }
  }

  print('Resultado: ');
  calcular();

}
