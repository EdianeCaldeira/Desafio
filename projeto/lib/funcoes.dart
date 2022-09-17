import 'dart:io';

class Funcoes {
  static String numero(String pergunta) {
    while (true) {
      String resposta;
      stdout.write(pergunta);
      resposta = stdin.readLineSync()!;
      if (int.tryParse(resposta) == null) {
        print("Esse valor e invalido!");
        continue;
      } else {
        return resposta;
      }
    }
  }

  static String pergunta(String pergunta) {
    while (true) {
      String resposta;
      stdout.write(pergunta);
      resposta = stdin.readLineSync()!;
      if (int.tryParse(resposta) != null) {
        print("Informação invalida!");
        continue;
      } else {
        return resposta;
      }
    }
  }

  static String informeCnpj(String pergunta) {
    while (true) {
      String resposta;
      stdout.write(pergunta);
      resposta = stdin.readLineSync()!;
      if (int.tryParse(resposta) == null || resposta.length != 14) {
        print("CNPJ Invalido, informe novamente!");
        continue;
      } else {
        return resposta;
      }
    }
  }

  static String informeCEP(String pergunta) {
    while (true) {
      String resposta;
      stdout.write(pergunta);
      resposta = stdin.readLineSync()!;
      if (int.tryParse(resposta) == null || resposta.length != 8) {
        print("CEP Invalido, informe novamente!");
        continue;
      } else {
        return resposta;
      }
    }
  }

  static String informeCPFeFone(String pergunta) {
    while (true) {
      String resposta;
      stdout.write(pergunta);
      resposta = stdin.readLineSync()!;
      if (int.tryParse(resposta) == null || resposta.length != 11) {
        print("Informação invalida, informe novamente!");
        continue;
      } else {
        return resposta;
      }
    }
  }

  static String paraNumeros(String pergunta)=> numero(pergunta).toString();
}
