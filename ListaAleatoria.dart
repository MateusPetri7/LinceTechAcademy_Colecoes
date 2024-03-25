import 'dart:math';

void main() {
  final random = Random();
  List<int> lista = [];

  for (int numero = 0; numero < 10; numero++) {
    lista.add(random.nextInt(101));
    print("Posição: $numero, valor: ${lista[numero]}");
  }
}
