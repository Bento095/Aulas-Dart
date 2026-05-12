void main() {
  imprimirLetras(frase);
}

/* 1) Imprimindo números no terminal
Imprima, no console, os números de 1 a 5 com o laço for.

O resultado esperado no console é o seguinte:

1
2
3
4
5*/

void imprimirNumeros() {
  for (int i = 1; i < 6; i++) {
  print(i);
  }
}


/*2) Mostrando nomes no terminal
Crie uma lista de nomes que é exibida no terminal com o for. Os nomes podem ser: Ana, João e Maria.

O resultado esperado no terminal é o seguinte:

Nome: Ana
Nome: João
Nome: Maria*/

List<String> nomes = ['Ana','João','Maria'];

void listarNomes(List<String> nomes) {
  for (int i = 0; i < nomes.length; i++) {
  print('Nome: ${nomes[i]}');
  }
}


/*3) Em busca da parada
Escreva um programa que imprime letras de uma frase “Parou! Este código não continua.” A ideia é que o código pare na primeira letra “!” encontrada.*/

String frase = 'Parou! Este código não continua.';
int index = 0;

void imprimirLetras(String frase){
 do {
  print(frase[index]);
  index++;
 } while (index < frase.length && frase[index - 1] != '!');
}