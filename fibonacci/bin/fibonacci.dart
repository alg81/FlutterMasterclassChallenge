import 'dart:io';

void main(List<String> arguments) {
  // Solicitando o numero para calculo do Fibonacci
  print('Digite o numero para cálculo da função de Fibonacci.');
  int? n_fib = int.parse(stdin.readLineSync()!);

  Fibonacci(n_fib);
}

void Fibonacci(int n_fib) {

  List<int> lista_fib = [];

  for (int n = 0; n <= n_fib; n++) {
    if (n == 0 || n == 1) {
      lista_fib.add(1);
    } else {
      lista_fib.add(n-1);
      lista_fib[n] = (lista_fib[n - 1] + lista_fib[n - 2]);
    }
    print(lista_fib);
  }
}