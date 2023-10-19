import 'package:test/test.dart';

import '../bin/projetoimc.dart';

void main() {
  test('Calcula IMC para pessoa com peso e altura válidos', () {
    // Teste para uma pessoa com IMC normal
    expect(calcularIMC(Pessoa('Alice', 60.0, 1.65)), closeTo(22.03, 0.01));
  });
}
