import 'dart:io';

void main() {
  var numeroUm = stdin.readLineSync(); // captura a entrada do usuário
  var numeroDois = stdin.readLineSync(); // captura a entrada do usuário
  print(numeroUm! + numeroDois!); // concatena as duas entradas
}