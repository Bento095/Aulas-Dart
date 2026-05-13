import 'dart:io';

void main() {
  List<String> notas = <String>[];
  menu(notas);
}

String getComando() {
  print('Digite um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair');
  List<String> comandos = <String>['1','2','3'];
  String? entrada = '';
  
  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print('Comando invalido');
    getComando();
  }

  return entrada!;
}

List<String> adicionaNota(List<String> notas) {
  print('Escreva uma nota: ');
  String? nota = '';
  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print('Não é possivel adicionar notas vazias');
    adicionaNota(notas);
  }
  notas.add(nota!);

  return notas;
}

void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

void menu(List<String> notas) {
<<<<<<< HEAD
  /*print("\x1B[2J\x1B[0;0H");*/
  art();
  print('');
  String comando = getComando();
  print('');
=======
  String comando = getComando();
>>>>>>> 1a10d271e269c1b26049275e78ef057a3361060c


  switch (comando) {
    case '1':
      adicionaNota(notas);
      menu(notas);
    case '2':
      listarNotas(notas);
      menu(notas);
    case '3':
      print('Ate breve!');


  }
<<<<<<< HEAD
}

void art() {
  print( " _______           _          _   _       _            _ ");
  print( "( )  _  \\         | |        | \\ | |     | |          ( )");
  print( "|/| | | |__ _ _ __| |_ ______|  \\| | ___ | |_ ___  ___|/ ");
  print( "  | | | / _\` | '__| __|______| . \` |/ _ \\| __/ _ \\/ __|  ");
  print( "  | |/ / (_| | |  | |_       | |\\  | (_) | ||  __/\\__ \\  ");
  print( "  |___/ \\__,_|_|   \\__|      \\_| \\_/\\___/ \\__\\___||___/  ");
  print( "                                                         ");
  print( "                                                         ");
=======
>>>>>>> 1a10d271e269c1b26049275e78ef057a3361060c
}