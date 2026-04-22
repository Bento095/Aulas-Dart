/* 1) Validação de categorias de produtos em um sistema de estoque
Você está desenvolvendo um sistema de gerenciamento de estoque onde cada produto deve pertencer a uma categoria específica como eletronicos, alimentos, vestuario e livros. Crie uma função que solicite à pessoa usuária que insira a categoria de um novo produto e valide a entrada, garantindo que a categoria existe no sistema.

Veja como ficaria o resultado no terminal:

Digite a categoria do produto (eletronicos, alimentos, vestuario, livros):
livros
Categoria válida: livros */


import 'dart:io';

/* void main() { 
    validarCategorias();
}*/

void validarCategorias() {
    List<String> categoriasValidas = ['eletronicos', 'alimentos', 'vestuario', 'livros'];
    print('Digite a categoria do produto $categoriasValidas: ');
    String produto = stdin.readLineSync()?.trim().toLowerCase() ?? '';
    if (produto != ''){
        if (categoriasValidas.contains(produto)) {
            print('Categoria válida: $produto');
        } else {
            print('Categoria inválida: $produto');
        }
    } else{
        print('Entrada invalida, tente novamente:');
        validarCategorias();
    }
}


/*2) Validação de tipos de arquivos em um sistema de upload
Você está desenvolvendo um sistema de upload de arquivos que aceita apenas tipos específicos como pdf, jpg, png e docx. Crie uma função que solicite à pessoa usuária o tipo de arquivo a ser enviado e valide se a entrada é um tipo de arquivo permitido, solicitando novamente em caso de erro.*/

/*void main() {
    validarTipoDeArquivo();
}*/

void validarTipoDeArquivo() {
    List<String> tiposValidos = ['pdf', 'jpg', 'png', 'docx'];
    print('Digite o formato do arquivo $tiposValidos: ');
    String tipo = stdin.readLineSync()?.trim().toLowerCase() ?? '';
    if (tipo != ''){
        if (tiposValidos.contains(tipo)) {
            print('Tipo válido: $tipo');
        } else {
            print('Tipo inválido: $tipo tente novamente:');
        validarTipoDeArquivo();
        }
    } else{
        print('Entrada invalida, tente novamente:');
        validarTipoDeArquivo();
    }
}


/* 3) Dando uma nova chance no retorno de mês
Lembra-se da atividade em que criamos um código que retorna um mês de acordo com um número digitado no terminal? Pegue aquele código e adicione a recursão, permitindo que o usuário possa novamente tentar inserir um número, caso digite um valor inválido (diferente dos números de 1 a 12).*/

/*void main(){
    mesEmNumeros();
}*/

void mesEmNumeros() {
  var meses = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'];
  print('--- Mês em números ---');
  stdout.write('Digite um número de 1 a 12: ');
  int escolha = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (escolha >= 1 && escolha <= 12) {
    print('O mês escolhido é: ${meses[escolha - 1]}'); // subtrai 1 pq começa em 0
  } else {
    stderr.write('Mês invalido!');
    mesEmNumeros();
  }
}

/* 4) Criando a função de depósito e fazendo sua validação
Vamos continuar desenvolvendo o programa de banco.

Agora, concentre-se na operação de depósito e escreva uma função em que o usuário, após digitar um valor numérico, o insere na conta. Lembre-se de validar se a entrada é um número positivo. Caso contrário, solicite novamente até que um valor válido seja fornecido. A ideia é que o programa rode mais ou menos assim no terminal:

Digite uma operação (deposito, retirada, transferencia, pagamento):
operação inválida que não existe na lista!
Operação inválida. Tente novamente.
Digite uma operação (deposito, retirada, transferencia, pagamento):
aaaabbbbb
Operação inválida. Tente novamente.
Digite uma operação (deposito, retirada, transferencia, pagamento):    
pagamento
Digite o valor da operação:
500
Operação escolhida: pagamento, Valor: 500.0 */


/*void main() {
    deposito();
}*/

void deposito() {
    List<String> operacoes = ['deposito', 'retirada', 'transferencia', 'pagamento'];
    stdout.write('Escolha a operação: $operacoes ');
    String escolha = stdin.readLineSync()?.trim().toLowerCase() ?? '';
    if (escolha != ''){
        if (operacoes.contains(escolha)) {
            print('ok 1');
            stdout.write('Digite o valor da operação: ');
            double valor = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
            print('Operação escolhida: $escolha, Valor: $valor');
        } else {
            print('ok 2');
            print('Operação inválida. Tente novamente.');
        deposito();
        }
    } else{
        print('ok 3');
        print('Operação inválida. Tente novamente.');
        deposito();
    }
}





/*5) Validação de métodos de pagamento em uma plataforma de e-commerce
Você está desenvolvendo uma plataforma de e-commerce onde a pessoa usuária pode escolher entre diferentes métodos de pagamento como cartao, boleto, paypal e pix. Crie uma função que solicite à pessoa usuária o método de pagamento desejado e valide se a entrada é válida, solicitando novamente em caso de erro. */


void main() {
    pagamentos();
}

void pagamentos() {
    bool rodando = true;

    while (rodando) {
        stdout.write('Escolha o metodo de pagamento: \n1 - cartao, 2 - boleto, 3 - paypal, 4 - pix: ');
        int escolha = int.tryParse(stdin.readLineSync() ?? '') ?? 0; 
        switch(escolha) {
            case  1:
                print('Cartao');
                rodando = false;
                break;
            case 2:
                print('boleto');
                rodando = false;
                break;
            case 3:
                print('paypal');
                rodando = false;
                break;
            case 4:
                print('pix');
                rodando = false;
                break;
            default:
                print('Operaçao invalida');
        }
    }
}