// imports
import 'dart:io';

//corpo principal do programa.
void main() {
  print('Calculadora Dart');
  double numeroUm = 0;
  String operacao = '';
  double numeroDois = 0;
  String? entrada = '';
  List<String> operacoes = <String>['+','-','*','/'];

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

  void getOperacao() {
  print('Digite a operação ${operacoes.toString()}: ');
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (operacoes.contains(entrada)){
      operacao = entrada!;
    } else {
      print('Operação inválida');
      getOperacao();
    }
  }
}

print('Digite o primeiro número: ');
entrada = stdin.readLineSync();

if (entrada != null) {
  if (entrada != ''){
    numeroUm = double.parse(entrada!);
  }
}

getOperacao();

print('Digite o segundo número: ');
entrada = stdin.readLineSync();
if (entrada != null) {
  if (entrada != ''){
    numeroDois = double.parse(entrada!);
    }
  }

  print('Resultado: ');
  calcular();
}
