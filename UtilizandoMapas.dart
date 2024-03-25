void main() {
  Map<String, List<String>> cidades = {
    'SC': ['Gaspar', 'Blumenau', 'Florianópolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguaçu'],
    'SP': ['São Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte']
  };

  String estados = "Estados: ";
  cidades.keys.forEach((element) {
    estados += ("$element ; ");
  });

  print(estados.substring(0, estados.length - 2));

  final cidadesDeSc = cidades['SC']!;

  cidadesDeSc.sort();

  String ordemAlfabeticaCidadesSc = "Cidades de SC: ";
  for (var cidade in cidadesDeSc) {
    ordemAlfabeticaCidadesSc += "$cidade ; ";
  }

  print(ordemAlfabeticaCidadesSc.substring(
      0, ordemAlfabeticaCidadesSc.length - 2));

  final resultadoCidadesComSigla = [];

  cidades.keys.forEach((element) {
    final cidadesEstados = cidades[element]!;

    for (var city in cidadesEstados) {
      resultadoCidadesComSigla.add('$city - $element');
    }
  });

  resultadoCidadesComSigla.sort();

  resultadoCidadesComSigla.forEach((element) {
    print(element);
  });
}
