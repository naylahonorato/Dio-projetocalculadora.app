import 'dart:convert';
import 'dart:io';

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

//Criando função para transformar a leitura
double lerConsoleDouble(String texto) {
  var numero = double.tryParse(lerConsole(texto));
  if (numero == null) {
    print("Número informado incorreto");
    exit(0);
  } else if (numero == 0) {
    print("Insira um número válido");
    exit(0);
  }else {
    return numero;
  }
}
