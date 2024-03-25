import 'dart:math';

void main() {
  final random = Random();
  List<int> lista = [];
  String listaOriginal = "Lista original: ";
  String itensUnicos = "Itens únicos: ";

  for (int numero = 0; numero < 50; numero++) {
    lista.add(random.nextInt(12) + 10);
    listaOriginal += "${lista[numero]} ; ";
  }

  Set<int> conjunto = lista.toSet();
  List<int> listaSemDuplicatas = conjunto.toList();

  for (int numero = 0; numero < listaSemDuplicatas.length; numero++) {
    itensUnicos += "${listaSemDuplicatas[numero]} ; ";
  }

  print(listaOriginal.substring(0, listaOriginal.length - 2));
  print(itensUnicos.substring(0, itensUnicos.length - 2));
}
