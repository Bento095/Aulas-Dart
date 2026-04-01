// imports
import 'dart:io';

//corpo principal do programa.
void main() {
  print('Digite o primeiro número: ');
  double numeroUm = double.parse(stdin.readLineSync()!);
  print('Escolha a operação (+ - / *): ');
  String operacao = stdin.readLineSync()!;
  print('Digite o segundo número: ');
  double numeroDois = double.parse(stdin.readLineSync()!);

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


  //bloco das operações por if/else.
  if (operacao == '+') {
    soma();
  } else{
    if (operacao == '-') {
        subtracao();
      } else {
        if (operacao == '/') {
            divisao();
          } else {
            if (operacao == '*') {
            multiplicacao();
        }
      }
    }
  }

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