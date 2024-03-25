import 'dart:math';

void main() {
  final random = Random();
  List<int> lista = [];
  String listaOriginal = "Lista original: ";
  String listaAtualizada = "Lista atualizada: ";

  for (int numero = 0; numero < 50; numero++) {
    lista.add(random.nextInt(16));
    listaOriginal += "${lista[numero]} ; ";
  }

  lista.removeWhere((element) => element % 2 == 0);

  for (int numero = 0; numero < lista.length; numero++) {
    listaAtualizada += "${lista[numero]} ; ";
  }

  print(listaOriginal.substring(0, listaOriginal.length - 2));
  print(listaAtualizada.substring(0, listaAtualizada.length - 2));
}
