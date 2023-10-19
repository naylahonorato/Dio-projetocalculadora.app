import 'package:projetoimc/utils.dart' as utils;

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);
}

double calcularIMC(Pessoa pessoa) {
  return pessoa.peso / (pessoa.altura * pessoa.altura);
}

void main() {
  print('Calculadora de IMC');
  try {
    String _nome = utils.lerConsole("Informe seu nome: ");

    double _peso = utils.lerConsoleDouble("Informe seu peso: ");

    double _altura = utils.lerConsoleDouble("Informe sua altura: ");

    Pessoa pessoa = Pessoa(_nome, _peso, _altura);
    double imc = calcularIMC(pessoa);
    String imcEditado = imc.toStringAsFixed(2);

    print('O IMC de ${pessoa.nome} é: $imcEditado');

    if (imc < 18.6) {
      print('Abaixo do peso');
    } else if (imc < 25) {
      print('Peso ideal');
    } else if (imc < 30) {
      print('Levemente acima do peso');
    } else if (imc < 35) {
      print('Obesidade Grau 1');
    } else if (imc < 40) {
      print('Obesidade Grau 2');
    } else {
      print("Obesidade Grau 3");
    }
  } catch (e) {
    print('Erro: Insira valores numéricos válidos para peso e altura.');
  }
}
