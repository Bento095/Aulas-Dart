import 'dart:io';

void main(acao) {
  List<String> nomes = [];
  List<List<double>> notas = [];
  String? acao;

  while (acao != 'sair') {
    cabecalho();
    print('Escolha uma ação: registrar, listar, sair');
    acao = stdin.readLineSync();

    switch (acao) {
      case 'registrar':
        registrarAluno(nomes, notas);
        break;
      case 'listar':
        listarAlunos(nomes, notas);
        break;
      case 'sair':
        print('Saindo...');
        break;
      default:
        print('Ação inválida.');
    }
  }
}


/* 1) Crie a lista para armazenar os nomes dos alunos e suas notas
Use listas e variáveis para armazenar os nomes e notas dos alunos. Lembre-se de que uma pessoa aluna pode ter várias notas. Você pode guardar listas dentro de listas.

Dica: a ideia aqui é apenas declarar as listas e variáveis. Nada muito complexo por enquanto! */



/*2) Implemente funções para registrar o nome dos alunos e suas notas escolares
Crie uma função, isolada da função main, com duas atividades: registrar o nome das pessoas e registrar suas notas escolares. O programa deve aceitar várias notas e encerrar a operação com um comando como fim. Veja um exemplo de como deve ficar o resultado no terminal:

Digite o nome do aluno:
Christian
Digite uma nota para o aluno (ou "fim" para terminar):
10
Digite uma nota para o aluno (ou "fim" para terminar):
8
Digite uma nota para o aluno (ou "fim" para terminar):
fim*/

void registrarAluno(List<String> nomes, List<List<double>> notas) {
  print('Digite o nome do aluno: ');
  String? nome = stdin.readLineSync();

  if (nome != null) {
    nomes.add(nome);
    List<double> notasAluno = [];

    while (true) {
      print('Digite uma nota para o aluno (ou "fim" para terminar!): ');
      String? entrada = stdin.readLineSync();

      if (entrada == 'fim') {
        break;
      } else if (entrada != null) {
        double nota = double.parse(entrada);
        notasAluno.add(nota);
      }
    } 

    notas.add(notasAluno);
  } else {
    print('Nome inválido!');
  }
}





/*3) Faça uma função que calcula a média de duas notas escolares
Declare a função que vai fazer o cálculo de média da nota escolar e chame-a no devido lugar. Lembre-se de que o cálculo deve ser feito com as notas registradas no sistema, o que foi feito no exercício anterior.*/

double calcularMedia(List<double> notas) {
  double soma = 0;
  for (double nota in notas) {
    soma += nota;
  }
  return soma / notas.length;
}




/*4) Crie a opção para exibir os nomes dos alunos e suas médias
Crie uma função que faz duas coisas: exibe os nomes de todos os alunos registrados e suas notas.

Lembre-se de mostrar esses resultados no terminal.

Vamos lá?*/

void listarAlunos(List<String> nomes, List<List<double>> notas) {
  print('Lista de alunos e suas médias:');
  for (int i = 0; i < nomes.length; i++) {
    double media = calcularMedia(notas[i]);
    print('${nomes[i]}: ${media.toStringAsFixed(2)}');
  }
}



/*5) Produza o menu do programa
Crie a lógica básica de um menu com cinco opções:

1 - Registrar um aluno e sua nota;

2 - Ver a lista de todos alunos registrados e suas médias escolares;

3 - Sair do programa.

Dica: Neste momento, a ideia é que você monte apenas a “estrutura geral” do menu, sem se preocupar em implementar as funções, listas e estruturas condicionais de cada uma das opções.

Vamos lá?*/






/*6) Personalize o programa com ASCII art
Hora dos retoques finais!

Assim como fizemos na aplicação de notas (no sentido de anotações), personalize o menu da aplicação com ASCII art. Você pode estilizar a ASCII art com “Sistema de acompanhamento escolar” ou algo assim. */

void cabecalho() {
  print("  _____ ____ _____ ______    ___  ___ ___   ____      ___      ___                                   ");
  print(" / ___/|    / ___/|      |  /  _]|   |   | /    |    |   \\    /  _]                                  ");
  print("(   \\_  |  (   \\_ |      | /  [_ | _   _ ||  o  |    |    \\  /  [_                                   ");
  print(" \\__  | |  |\\__  ||_|  |_||    _]|  \\_/  ||     |    |  D  ||    _]                                  ");
  print(" /  \\ | |  |/  \\ |  |  |  |   [_ |   |   ||  _  |    |     ||   [_                                   ");
  print(" \\    | |  |\\    |  |  |  |     ||   |   ||  |  |    |     ||     |                                  ");
  print("  \\___||____|\\___|  |__|  |_____||___|___||__|__|    |_____||_____|                                  ");
  print("                                                                                                     ");
  print("  ____    __   ___   ___ ___  ____   ____  ____   __ __   ____  ___ ___    ___  ____   ______   ___  ");
  print(" /    |  /  ] /   \\ |   |   ||    \\ /    ||    \\ |  |  | /    ||   |   |  /  _]|    \\ |      | /   \\ ");
  print("|  o  | /  / |     || _   _ ||  o  )  o  ||  _  ||  |  ||  o  || _   _ | /  [_ |  _  ||      ||     |");
  print("|     |/  /  |  O  ||  \\_/  ||   _/|     ||  |  ||  _  ||     ||  \\_/  ||    _]|  |  ||_|  |_||  O  |");
  print("|  _  /   \\_ |     ||   |   ||  |  |  _  ||  |  ||  |  ||  _  ||   |   ||   [_ |  |  |  |  |  |     |");
  print("|  |  \\     ||     ||   |   ||  |  |  |  ||  |  ||  |  ||  |  ||   |   ||     ||  |  |  |  |  |     |");
  print("|__|__|\\____| \\___/ |___|___||__|  |__|__||__|__||__|__||__|__||___|___||_____||__|__|  |__|   \\___/ ");
  print("                                                                                                     ");
  print("   ___  _____   __   ___   _       ____  ____                                                        ");
  print("  /  _]/ ___/  /  ] /   \\ | |     /    ||    \\                                                       ");
  print(" /  [_(   \\_  /  / |     || |    |  o  ||  D  )                                                      ");
  print("|    _]\\__  |/  /  |  O  || |___ |     ||    /                                                       ");
  print("|   [_ /  \\ /   \\_ |     ||     ||  _  ||    \\                                                      ");
  print("|     |\\    \\     ||     ||     ||  |  ||  .  \\                                                      ");
  print("|_____| \\___|\\____| \\___/ |_____||__|__||__|\\_|                                                      ");
  print("                                                                                                     ");
}